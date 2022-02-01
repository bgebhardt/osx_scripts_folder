-- Script to pause play music so I can set it up as a global hot key in FastScripts.
-- play/pause - cmd-option-shift-space
tell application "Music"
	playpause

	display notification "Music is " & (player state as text)
end tell
