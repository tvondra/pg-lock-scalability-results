#!/usr/bin/bash

set -e

PREFIX=$1
OUTDIR=$2
RUNS=$3
DURATION=$4
CLIENTS=$5
PARTITIONS=$6

ps ax > $OUTDIR/pgbench.ps.log 2>&1

#for s in 5 25 250; do
for s in 5; do

	for p in $PARTITIONS; do

		DBNAME="pgbench-$s-$p"

		./prepare-pgbench.sh $OUTDIR $s $p > $OUTDIR/pgbench-createdb.log 2>&1

		pgbench -n -M prepared -T $((DURATION)) -c 32 -j 32 -S $DBNAME > $OUTDIR/pgbench-warmup-$s-$p.log 2>&1

		psql $DBNAME -c "\d+" >> $OUTDIR/pgbench.sizes.$s.$p.log 2>&1
		psql $DBNAME -c "\di+" >> $OUTDIR/pgbench.sizes.$s.$p.log 2>&1

		for r in $(seq 1 $RUNS); do

			for m in simple prepared; do

				for c in $CLIENTS; do

					pgbench -n -M $m -T $DURATION -c $c -j $c -S $DBNAME > $OUTDIR/pgbench.log 2>&1

					lat_avg=$(grep 'latency average' $OUTDIR/pgbench.log | awk '{print $4}')
					lat_stddev=$(grep 'latency stddev' $OUTDIR/pgbench.log | awk '{print $4}')
					tps=$(grep tps $OUTDIR/pgbench.log | tail -n 1 | awk '{print $3}')

					echo pgbench $PREFIX $s $p $m $c $r $tps $lat_avg $lat_stddev

				done

			done

		done

	done

done
