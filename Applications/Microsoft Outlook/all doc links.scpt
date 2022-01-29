-- get all window titles
tell application "Microsoft Outlook"
	set the clipboard to ""
	
	repeat with w in (get every window)
		set link to "* [" & name of w & "]"
		set the clipboard to (the clipboard) & link & return
		
	end repeat
	
end tell
