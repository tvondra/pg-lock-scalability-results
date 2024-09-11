#!/usr/bin/bash

set -e

PREFIX=$1
OUTDIR=$2
RUNS=$3
DURATION=$4
CLIENTS=$5
PARTITIONS=$6

ps ax > $OUTDIR/star.ps.log 2>&1

#for s in 1 10 100; do
for s in 10; do

	DIMROWS=$((s*1000))

	for p in $PARTITIONS; do

		# can't join with more than 100 dimensions
		if [[ $p -gt 100 ]]; then
			continue
		fi

		# no point in testing a case with no dimensions
		if [ "$p" == "0" ]; then
			continue
		fi

		DBNAME="star-$s-$p"

		./prepare-star.sh $OUTDIR $s $p > $OUTDIR/prepare-$s-$p.log 2>&1

		# generate the pgbench script
		echo "\set aid random(1, 1000000 * $s)" > $OUTDIR/star-$s-$p.sql
		echo 'select t.* from t' >> $OUTDIR/star-$s-$p.sql
		for i in $(seq 1 $p); do
			echo "join dim$i on (d$i = dim$i.id)" >> $OUTDIR/star-$s-$p.sql
		done
		echo ' where t.id = :aid' >> $OUTDIR/star-$s-$p.sql

		psql $DBNAME -c "\d+" >> $OUTDIR/star.sizes.$s.$p.log 2>&1
		psql $DBNAME -c "\di+" >> $OUTDIR/star.sizes.$s.$p.log 2>&1

		pgbench -n -M prepared -T $((DURATION)) -c 32 -j 32 -f $OUTDIR/star-$s-$p.sql $DBNAME > $OUTDIR/star-warmup-$s-$p.log 2>&1

		for r in $(seq 1 $RUNS); do

			for m in simple prepared; do

				for c in $CLIENTS; do

					pgbench -n -M $m -T $DURATION -c $c -j $c -f $OUTDIR/star-$s-$p.sql $DBNAME > $OUTDIR/pgbench.log 2>&1

					lat_avg=$(grep 'latency average' $OUTDIR/pgbench.log | awk '{print $4}')
					lat_stddev=$(grep 'latency stddev' $OUTDIR/pgbench.log | awk '{print $4}')
					tps=$(grep tps $OUTDIR/pgbench.log | awk '{print $3}')

					echo star $PREFIX $s $p $m $c $r $tps $lat_avg $lag_stddev

				done

			done

		done

	done

done
