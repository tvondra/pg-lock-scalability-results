#!/usr/bin/bash

set -e

OUTDIR=$1
p=$2

ps ax > $OUTDIR/count.ps.log 2>&1

DBNAME="count-$p"

cnt=$(psql -t -A -c "select count(*) from pg_database where datname = '$DBNAME'" postgres)

if [ "$cnt" == "0" ]; then

	dropdb --if-exists "tmp" >> $OUTDIR/debug.log 2>&1

	createdb "tmp" >> $OUTDIR/debug.log 2>&1

	if [ "$p" == "0" ]; then
		psql "tmp" -e -c "CREATE TABLE t (a INT)" >> $OUTDIR/debug.log 2>&1
	else
	    	psql "tmp" -e -c "CREATE TABLE t (a INT) PARTITION BY HASH (a)" >> $OUTDIR/debug.log 2>&1

		for c in $(seq 1 $p); do

			r=$((c-1))

			psql "tmp" -e -c "CREATE TABLE t_$r PARTITION OF t FOR VALUES WITH (modulus $p, remainder $r)" >> $OUTDIR/debug.log 2>&1

		done

	fi

	psql "tmp" -c "INSERT INTO t SELECT i FROM generate_series(1,1000) s(i)" >> $OUTDIR/debug.log 2>&1
	psql "tmp" -c "VACUUM ANALYZE" >> $OUTDIR/debug.log 2>&1
	psql "tmp" -c "CHECKPOINT" >> $OUTDIR/debug.log 2>&1

	psql "postgres" -c "ALTER DATABASE \"tmp\" RENAME TO \"$DBNAME\"" >> $OUTDIR/debug.log 2>&1

fi
