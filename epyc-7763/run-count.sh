#!/usr/bin/bash

set -e

PREFIX=$1
OUTDIR=$2
RUNS=$3
DURATION=$4
CLIENTS=$5
PARTITIONS=$6

ps ax > $OUTDIR/count.ps.log 2>&1

for p in $PARTITIONS; do

	DBNAME="count-$p"

	./prepare-count.sh $OUTDIR $p > $OUTDIR/count-prepare-$p.log 2>&1

	echo "SELECT COUNT(*) FROM t" > select.sql

	pgbench -n -M prepared -T $((DURATION)) -c 32 -j 32 -f select.sql $DBNAME > $OUTDIR/count-warmup-$p.log 2>&1

	for r in $(seq 1 $RUNS); do

		for m in simple prepared; do

			for c in $CLIENTS; do

				pgbench -n -M $m -T $DURATION -c $c -j $c -f select.sql $DBNAME > $OUTDIR/pgbench.log 2>&1

				lat_avg=$(grep 'latency average' $OUTDIR/pgbench.log | awk '{print $4}')
				lat_stddev=$(grep 'latency stddev' $OUTDIR/pgbench.log | awk '{print $4}')
				tps=$(grep tps $OUTDIR/pgbench.log | tail -n 1 | awk '{print $3}')

				echo count $PREFIX $p $m $c $r $tps $lat_avg $lag_stddev

			done

		done

	done

done
