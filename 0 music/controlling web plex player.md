# Controlling Plex

Turns out you can use the keyboard media keys to:
- play/pause
- next track
- prev track

to see all keyboard shortcuts with "?"

- play pause - space
- next track - shift + right arrow
- prev track - shift + left arrow

Goal to create an applescript that can send events to Plex.

tell application "/Applications/Plex.app"
	activate
	tell application "System Events"
		keystroke space
	end tell
	
end tell