-- Script to pause play music so I can set it up as a global hot key in FastScripts.
-- next track - cmd-option-shift-right arrow
if application "Music" is running then
	tell application "Music"
		next track
	end tell
end if