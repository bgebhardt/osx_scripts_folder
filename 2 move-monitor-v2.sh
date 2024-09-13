#!/bin/bash
# Script to move the build-in display up and down by 10 pixels to trigger a repositioning of the dock and windows.

# Reference to betterdisplaycli
BETTERDISPLAYCLI="/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay"

# Define the names of your displays
DISPLAY1="M34WQ"
DISPLAY2="Built-in Display"

# top corner -1512x0
# middle position -1512x229
# bottom corner -1512x458

# Get the current position of the monitor "Built In"
current_position=$($BETTERDISPLAYCLI get -namelike=$DISPLAY2 -placement)

# echo "current_position: $current_position"

current_x=$(echo $current_position | awk -Fx '{print $1}')
current_y=$(echo $current_position | awk -Fx '{print $2}')

# this will swap Y value between 229 and 239
# Check if current_y is greater than 229
if [ $current_y -gt 229 ]; then
    # Set new_y to 10 pixels lower
    new_y=$((current_y - 10))
else
    # Set new_y to 10 pixels higher
    new_y=$((current_y + 10))
fi

# hack
hack_end="x$new_y"
#echo "$current_x$hack_end"

# Move the monitor to the new position
$BETTERDISPLAYCLI set -namelike=$DISPLAY2 -placement="$current_x$hack_end"

# Print the old and new positions
echo "Old position: $current_x,$current_y"
echo "New position: $current_x,$new_y"

# Beep once using AppleScript
osascript -e 'beep 1'