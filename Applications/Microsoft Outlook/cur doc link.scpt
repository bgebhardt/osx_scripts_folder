-- get current window title
tell application "Microsoft Outlook"
	set the clipboard to (get name of (get window 1))
end tell