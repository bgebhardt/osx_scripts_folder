#!/bin/sh

percent=$(ioreg -l | awk '$3~/Capacity/{c[$3]=$5}END{OFMT="%.3f";max=c["\"MaxCapacity\""];print(max>0?100*c["\"CurrentCapacity\""]/max:"?")}')

if [ $percent > 95 ]
    then
        echo 'charged.'
fi
exit 0