#!/usr/bin/bash

set -e

OUTDIR=$1
s=$2
p=$3

DBNAME="join-$s-$p"

cnt=$(psql -t -A -c "select count(*) from pg_database where datname = '$DBNAME'" postgres)

if [ "$cnt" == "0" ]; then

	dropdb --if-exists "tmp" >> $OUTDIR/debug.log 2>&1

	createdb "tmp" >> $OUTDIR/debug.log 2>&1

	if [ "$p" == "0" ]; then
		pgbench -i -s $s "tmp" >> $OUTDIR/debug.log 2>&1
	else
		pgbench -i -s $s --partitions $p "tmp" >> $OUTDIR/debug.log 2>&1
	fi

	psql "tmp" -c "ALTER TABLE pgbench_accounts ADD COLUMN aid_parent INT" >> $OUTDIR/debug.log 2>&1
	psql "tmp" -c "UPDATE pgbench_accounts SET aid_parent = aid" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "CREATE INDEX ON pgbench_accounts(aid_parent)" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "VACUUM FULL" >> $OUTDIR/debug.log 2>&1

	psql "tmp" -c "VACUUM ANALYZE" >> $OUTDIR/debug.log 2>&1
	psql "tmp" -c "CHECKPOINT" >> $OUTDIR/debug.log 2>&1

	psql "postgres" -c "ALTER DATABASE \"tmp\" RENAME TO \"$DBNAME\"" >> $OUTDIR/debug.log 2>&1

fi
