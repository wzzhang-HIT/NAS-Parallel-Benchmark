#!/bin/sh

for name in "bt" "cg" "dt" "ep" "ft" "is" "lu" "mg" "sp"
do
    for class in "S" "W" "A" "B" "C" "D" "E"
    do
        for nproc in 1 2 4 
        do
            if [ $name == "bt" ] ; then
                if [ $class == "C" -o $class == "D" -o $class == "E" ]
                then
                    continue
                fi
            fi
            if [ $name == "is" -a $class == "S" ]; then
                continue
            fi
            make $name CLASS=$class NPROCS=$nproc
        done
    done
done
