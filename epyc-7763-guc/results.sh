#!/usr/bin/bash

for t in index pgbench star count join; do

        rm -f $t.csv

        for d in $1; do

                for f in $(find ./$d -iname $t.csv); do

                        cat $f | sed "s/^/$d /" >> $t.csv

                done

        done

done

