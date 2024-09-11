#!/usr/bin/bash

set -e

OUTDIR=$1
s=$2
p=$3

DIMROWS=$((s*1000))

# can't join with more than 100 dimensions
if [[ $p -gt 100 ]]; then
	continue
fi

# no point in testing a case with no dimensions
if [ "$p" == "0" ]; then
	continue
fi

DBNAME="star-$s-$p"

cnt=$(psql -t -A -c "select count(*) from pg_database where datname = '$DBNAME'" postgres)

if [ "$cnt" == "0" ]; then

	dropdb --if-exists tmp

	createdb tmp >> $OUTDIR/debug.log 2>&1

	echo 'create table t (id serial primary key' > $OUTDIR/star-$s-$p-create.sql

	# create columns for dimension tables
	for i in $(seq 1 $p); do
		echo ", d$i int" >> $OUTDIR/star-$s-$p-create.sql
	done

	echo ');' >> $OUTDIR/star-$s-$p-create.sql

	# create dimension tables, scale * 1k rows seems reasonable
	for i in $(seq 1 $p); do
		echo "create table dim$i (id serial primary key, val int);" >> $OUTDIR/star-$s-$p-create.sql
		echo "insert into dim$i select i, i from generate_series(1,$DIMROWS) s(i);" >> $OUTDIR/star-$s-$p-create.sql
	done

	# generate insert with enough columns
	echo "insert into t select i" >> $OUTDIR/star-$s-$p-create.sql

	for i in $(seq 1 $p); do
		echo ", (1 + mod(i, $DIMROWS))" >> $OUTDIR/star-$s-$p-create.sql
	done

	echo "from generate_series(1, $s * 1000000) g(i);" >> $OUTDIR/star-$s-$p-create.sql

	# also create indexes on the foreign keys
	for i in $(seq 1 $p); do
		echo "create index on t(d$i);" >> $OUTDIR/star-$s-$p-create.sql
	done

	psql "tmp" < $OUTDIR/star-$s-$p-create.sql >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "VACUUM FULL" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "VACUUM ANALYZE" >> $OUTDIR/debug.log 2>&1
	psql "tmp" -c "CHECKPOINT" >> $OUTDIR/debug.log 2>&1

	psql "postgres" -c "alter database \"tmp\" rename to \"$DBNAME\"" >> $OUTDIR/debug.log 2>&1

fi
