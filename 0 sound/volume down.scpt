-- output volume down
-- system volume down - cmd-option-down arrow

set curVol to get volume settings
-- Example output: {output volume:50, input volume:100, alert volume:100, output muted:false}

output volume of curVol
set volume output volume (output volume of curVol) - 10

get volume settings -- for quick debugging

-- Good reference link:[How to control OS X System Volume with AppleScript](https://coolaj86.com/articles/how-to-control-os-x-system-volume-with-applescript/)
