#!/usr/bin/bash

set -e

PREFIX=$1
OUTDIR=$2
RUNS=$3
DURATION=$4
CLIENTS=$5
PARTITIONS=$6

#for s in 5 50 500; do
for s in 10; do

	for p in $PARTITIONS; do

		DBNAME="join-$s-$p"

		./prepare-join.sh $OUTDIR $s $p > $OUTDIR/prepare.$s.$p.log 2>&1

		psql $DBNAME -c "\d+" >> $OUTDIR/join.sizes.$s.$p.log 2>&1
		psql $DBNAME -c "\di+" >> $OUTDIR/join.sizes.$s.$p.log 2>&1

		pgbench -n -M prepared -T $((DURATION)) -c 32 -j 32 -f join.sql $DBNAME > $OUTDIR/join-warmup-$s-$p.log 2>&1

		for r in $(seq 1 $RUNS); do

			for m in simple prepared; do
			#for m in prepared; do

				for c in $CLIENTS; do

					pgbench -n -M $m -T $DURATION -c $c -j $c -f join.sql $DBNAME > $OUTDIR/pgbench.log 2>&1

					lat_avg=$(grep 'latency average' $OUTDIR/pgbench.log | awk '{print $4}')
					lat_stddev=$(grep 'latency stddev' $OUTDIR/pgbench.log | awk '{print $4}')
					tps=$(grep tps $OUTDIR/pgbench.log | awk '{print $3}')

					echo join $PREFIX $s $p $m $c $r $tps $lat_avg $lag_stddev

				done

			done

		done

	done

done
