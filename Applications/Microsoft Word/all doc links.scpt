-- get all doc links
tell application "Microsoft Word"
	set docs to documents
	
	set the clipboard to ""
	
	repeat with d in docs
		set link to "* [" & name of d & "](" & full name of d & ")"
		set the clipboard to (the clipboard) & link & return
		
	end repeat
	
end tell
