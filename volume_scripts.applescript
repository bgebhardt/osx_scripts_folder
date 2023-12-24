-- Some common commands for adjusting Mac volume
-- using with osascript to change volume at certain times of the day.
-- see https://coolaj86.com/articles/how-to-control-os-x-system-volume-with-applescript/
-- all part of StandardAdditions

get volume settings

set volume with output muted -- mute
set volume without output muted -- unmute

-- get if muted
output muted of (get volume settings)

