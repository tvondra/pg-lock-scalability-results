#!/usr/bin/bash

set -e

OUTDIR=$1
s=$2
i=$3

ps ax > $OUTDIR/index.ps.log 2>&1

DBNAME="index-$s-$i"

cnt=$(psql -t -A -c "select count(*) from pg_database where datname = '$DBNAME'" postgres)

if [ "$cnt" == "0" ]; then

	dropdb --if-exists "tmp" >> $OUTDIR/debug.log 2>&1

	createdb "tmp" >> $OUTDIR/debug.log 2>&1

	# create table with a bunch of columns
	echo "CREATE TABLE t (id serial primary key" > $OUTDIR/index.create.$s.$i.sql

	# how many columns to create? 100 seems like a nice round value ;-)
	for c in `seq 1 100`; do
		echo ", c$c int"  >> $OUTDIR/index.create.$s.$i.sql
	done

	echo ");" >> $OUTDIR/index.create.$s.$i.sql

	# now also add some data
	echo 'insert into t select i' >> $OUTDIR/index.create.$s.$i.sql

	for c in `seq 1 100`; do
		echo ", i" >> $OUTDIR/index.create.$s.$i.sql
	done

	# 10k rows per scale sounds about right? pgbench has 100k, but our table is wider
	echo " from generate_series(1, $s * 10000) s(i);" >> $OUTDIR/index.create.$s.$i.sql

	echo 'vacuum analyze;' >> $OUTDIR/index.create.$s.$i.sql

	echo 'set max_parallel_maintenance_workers = 8;' >> $OUTDIR/index.create.$s.$i.sql

	# now create the indexes, spread over all the columns
	for j in `seq 1 $i`; do
		# which column to create the index on?
		c=$((j % 100 + 1))
		echo "create index on t (c$c);" >> $OUTDIR/index.create.$s.$i.sql
	done

	psql "tmp" < $OUTDIR/index.create.$s.$i.sql > $OUTDIR/debug.log 2>&1

	psql "tmp" -c "vacuum analyze" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "checkpoint" >> $OUTDIR/debug.log 2>&1

	psql "postgres" -c "ALTER DATABASE \"tmp\" RENAME TO \"$DBNAME\"" >> $OUTDIR/debug.log 2>&1

fi
