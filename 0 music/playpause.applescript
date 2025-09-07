-- Script to pause play music so I can set it up as a global hot key in FastScripts.
-- play/pause - cmd-option-shift-space
if application "Music" is running then
	tell application "Music"
		playpause

		display notification "Music is " & (player state as text)
	end tell
end if