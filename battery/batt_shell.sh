#!/bin/sh

# Better to turn this into an Applecript.

pmset_ps=$(pmset -g ps | awk '{print $3}' | sed 's/%//')

# percent=$(ioreg -l | awk '$3~/Capacity/{c[$3]=$5}END{OFMT="%.3f";max=c["\"MaxCapacity\""];print(max>0?100*c["\"CurrentCapacity\""]/max:"?")}')

# if [ $percent > 95 ]
#     then
#         echo 'charged.'
# fi

pmset_ps=$(pmset -g ps)
pmset_adapter=$(pmset -g adapter)

# echo "$pmset_ps"
# echo "$pmset_adapter"

# how to read line by line
# while read line; do
#     echo "Line: $line"
# done <<< "$pmset_ps"

# while read line; do
#     echo "Line: $line"
# done <<< "$pmset_adapter"

# Read Wattage line (the first line) and make sure it is > 50 watts
read wattage_line <<< "$pmset_adapter"

#echo "Wattage line: $wattage_line"

cur_watts=$(echo "$wattage_line" | sed 's/[^0-9]*//g')
# see [How to extract a number from a string using Bash example - Linux Tutorials - Learn Linux Configuration](https://linuxconfig.org/how-to-extract-number-from-a-string-using-bash-example)

echo "$cur_watts"



if [ $cur_watts -gt 50 ]
    then
        echo "Right charger"
        message=$(echo "At $cur_watts watts")
        osascript -e 'display notification "At $cur_watts watts" with title "On Right Charger"'
    else
        echo "Wrong charger"
        osascript -e 'display notification "At $cur_watts watts" with title "On Wrong Charger"'
fi

# loop each line in $pmset_ps
#     if line contains "AC Power"
#         if line contains "No"
#             echo "Not charging"
#         else
#             echo "Charging"
#         fi
#     fi

exit 0