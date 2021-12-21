-- gets markdown style link for all open presentations of PowerPoint.

tell application "Microsoft PowerPoint"
	set presos to presentations
	
	set the clipboard to ""
	
	repeat with p in presos
		set link to "* [" & name of p & "](" & full name of p & ")"
		set the clipboard to (the clipboard) & link & return
		
	end repeat
	
end tell
