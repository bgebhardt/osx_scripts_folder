-- output volume up
-- system volume up - cmd-option-up arrow

set curVol to get volume settings
-- Example output: {output volume:50, input volume:100, alert volume:100, output muted:false}

set newVolume to output volume of curVol + 5

if newVolume >= 100
    set newVolume to 100
end if

set volume output volume newVolume

get volume settings -- for quick debugging

display notification "Volume up to " & newVolume with title "Volume Up"

-- Good reference link:[How to control OS X System Volume with AppleScript](https://coolaj86.com/articles/how-to-control-os-x-system-volume-with-applescript/)
