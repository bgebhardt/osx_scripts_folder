-- Script to pause play music so I can set it up as a global hot key in FastScripts.
-- previous track - cmd-option-shift-left arrow
if application "Music" is running then
	tell application "Music"
		previous track
	end tell
end if