#!/usr/bin/bash -x

set -e

LABEL=$1
MACHINE=rpi5-64
DBNAME=test
RUNS=3
DURATION=10
CLIENTS="16 1 4"
PARTITIONS="100 10 1 0 1000"
BUILDS="/mnt/data/builds"
SOURCE="/mnt/data/postgres"

PATH_OLD=$PATH

DATE=`date +%Y%m%d-%H%M`

PATCHES=$(pwd)/patches
LOGS=$(pwd)/$DATE-$LABEL/logs
RESULTS=$(pwd)/$DATE-$LABEL/results
DATADIR=/mnt/data/data-test

ulimit -n 35000


# make sure postgres is not running already
killall -9 postgres || true
sleep 1

export PATH=$BUILDS/master/bin:$PATH_OLD;

# remove data directory
if [ ! -d "$DATADIR" ]; then

	pg_ctl -D $DATADIR init > pg.init.log 2>&1

fi

pg_ctl -D $DATADIR -l pg.log start > pg.start.log 2>&1

psql postgres -c "select * from pg_settings" > pg.settings.log 2>&1


for t in join star index count pgbench; do

	for files in 1000 32768; do

		for p in $PARTITIONS; do

			for partitions in no yes; do

				for glibc in no yes; do

					for pool in no yes; do

						for groups in 64 0 1 512 8 4096; do

							RUN=$t-$partitions-$glibc-$pool-$groups-$files-$p-$(date +%s)
							LOGDIR=$LOGS/$RUN
							RESULTDIR=$RESULTS/$RUN

							if [ -f "$LOGDIR" ]; then
								echo "$LOGDIR already exits"
								exit 1
							fi

							if [ -f "$RESULTDIR" ]; then
								echo "$RESULTDIR already exists"
								exit 1
							fi

							mkdir -p $LOGDIR
							mkdir -p $RESULTDIR

							env > $LOGDIR/env.log 2>&1

							echo `date` "BUILD lock partitions: $partitions  fastpath groups: $groups  pool: $pool"

							pushd $SOURCE

							git reset --hard
							git checkout master
							git clean -f -d -x > /dev/null

							BRANCH="$RUN"

							git checkout -b $BRANCH

							if [ "$partitions" == "yes" ]; then
								cat $PATCHES/0001-Increase-NUM_LOCK_PARTITIONS-to-64.patch | patch -p1
								git commit src -m "NUM_LOCK_PARTITIONS"
							fi

							if [ "$groups" != "0" ]; then
								cat $PATCHES/0002-Increase-the-number-of-fastpath-locks.patch | sed "s/MY_PLACEHOLDER/$groups/" | patch -p1
								git commit src -m "fastpath lock groups $groups"
							fi

							if [ "$pool" == "yes" ]; then
								cat $PATCHES/0003-Add-a-memory-pool-with-adaptive-rebalancing.patch | patch -p1
								git commit src -m "memory pool"
							fi

							# remember the applied patches
							git log | head -n 1000 > $LOGDIR/git.log 2>&1

							git diff master > $LOGDIR/diff.patch 2>&1

							# run configure
							CC="ccache gcc" ./configure --prefix=$BUILDS/$BRANCH --enable-debug --enable-depend > $LOGDIR/configure.log

							# build everything

							make -s clean
							make -s -j4 install

							cd contrib
							make -s clean
							make -s -j4 install
							cd ..

							popd

							echo `date` "RUN   files: $files  partitions: $p"

							ulimit -a > $LOGDIR/ulimit.log

							unset MALLOC_TOP_PAD_
							unset MALLOC_MMAP_THRESHOLD_
							unset MALLOC_TRIM_THRESHOLD_

							if [ "$glibc" == "yes" ]; then
								export MALLOC_TOP_PAD_=$((64*1024*1024))
								export MALLOC_MMAP_THRESHOLD_=$((1024*1024))
								export MALLOC_TRIM_THRESHOLD_=$((1024*1024))
							fi

							export PATH=$BUILDS/$BRANCH/bin:$PATH_OLD;

							pg_config > $LOGDIR/debug.log 2>&1
							env > $LOGDIR/env.log 2>&1

							# make sure postgres is not running already
							killall -9 postgres || true
							sleep 1

							pg_ctl -D $DATADIR -l $LOGDIR/pg.log stop > $LOGDIR/stop.log 2>&1 || true

							rm -f $DATADIR/postgresql.auto.conf

						        echo "max_connections = 1000" >> $DATADIR/postgresql.auto.conf
							echo "shared_buffers = 2GB" >> $DATADIR/postgresql.auto.conf
							echo "max_locks_per_transaction = 8192" >> $DATADIR/postgresql.auto.conf
							echo "max_parallel_workers_per_gather = 0" >> $DATADIR/postgresql.auto.conf
							echo "random_page_cost = 1.5" >> $DATADIR/postgresql.auto.conf
							echo "max_files_per_process = $files" >> $DATADIR/postgresql.auto.conf

							pg_ctl -D $DATADIR -l $LOGDIR/pg.log start > $LOGDIR/start.log 2>&1
							psql postgres -c "select * from pg_settings" > $LOGDIR/settings.log 2>&1

							ps ax > $LOGDIR/ps.log 2>&1

							./run-$t.sh "$MACHINE $BRANCH $files $partitions $glibc $pool $groups" $LOGDIR $RUNS $DURATION "$CLIENTS" "$p" > $RESULTDIR/$t.csv

							pg_ctl -D $DATADIR stop > $LOGDIR/stop.log 2>&1 || true

						done

					done

				done

			done

		done

	done

done
