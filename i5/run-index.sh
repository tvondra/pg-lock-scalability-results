#!/usr/bin/bash

set -e

PREFIX=$1
OUTDIR=$2
RUNS=$3
DURATION=$4
CLIENTS=$5
INDEXES=$6

ps ax > $OUTDIR/index.ps.log 2>&1

#for s in 10 100 1000; do
for s in 10; do

	for i in $INDEXES; do

		cnt=$((s*i))

		# skip cases with too many indexes
		if [[ $cnt -ge 100000 ]]; then
			continue
		fi

		DBNAME="index-$s-$i"

		./prepare-index.sh $OUTDIR $s $i > $OUTDIR/index.prepare.$s.$i.log 2>&1

		psql $DBNAME -c "\d+" >> $OUTDIR/index.sizes.$s.$i.log 2>&1
		psql $DBNAME -c "\di+" >> $OUTDIR/index.sizes.$s.$i.log 2>&1

		# also generate the benchmark script
		echo "\set aid random(1, 100000 * $s)" > $OUTDIR/index.sql
		echo "select * from t where id = :aid;" >> $OUTDIR/index.sql

		pgbench -n -M prepared -T $((DURATION)) -c 32 -j 32 -f $OUTDIR/index.sql $DBNAME > $OUTDIR/index-warmup-$s-$i.log 2>&1

		for r in $(seq 1 $RUNS); do

			for m in simple prepared; do

				for c in $CLIENTS; do

					pgbench -n -M $m -T $DURATION -c $c -j $c -f $OUTDIR/index.sql $DBNAME > $OUTDIR/pgbench.log 2>&1

					lat_avg=$(grep 'latency average' $OUTDIR/pgbench.log | awk '{print $4}')
					lat_stddev=$(grep 'latency stddev' $OUTDIR/pgbench.log | awk '{print $4}')
					tps=$(grep tps $OUTDIR/pgbench.log | tail -n 1 | awk '{print $3}')

					echo index $PREFIX $s $i $m $c $r $tps $lat_avg $lat_stddev

				done

			done

		done

	done

done
