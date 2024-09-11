#!/usr/bin/bash

set -e

OUTDIR=$1
s=$2
p=$3

DBNAME="pgbench-$s-$p"

cnt=$(psql -t -A -c "select count(*) from pg_database where datname = '$DBNAME'" postgres)

if [ "$cnt" == "0" ]; then

	dropdb --if-exists "tmp" >> $OUTDIR/debug.log 2>&1

	createdb "tmp" >> $OUTDIR/debug.log 2>&1

	pgbench -i -s $s --partitions=$p "tmp" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "checkpoint" >> $OUTDIR/debug.log 2>&1

	psql "postgres" -c "alter database \"tmp\" rename to \"$DBNAME\"" >> $OUTDIR/debug.log 2>&1

fi
