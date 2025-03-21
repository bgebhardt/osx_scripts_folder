-- get all doc links from every office application

-- Useful link: [macos - How to check in AppleScript if an app is running, without launching it - via osascript utility - Stack Overflow](https://stackoverflow.com/questions/16064957/how-to-check-in-applescript-if-an-app-is-running-without-launching-it-via-osa/16069999#16069999)


set the clipboard to ""

set the clipboard to (the clipboard) & "# Microsoft Excel" & return

tell application "Microsoft Excel"
	if it is running then
		set docs to documents
		
		repeat with d in docs
			set link to "* [" & name of d & "](" & full name of d & ")"
			set the clipboard to (the clipboard) & link & return
			
		end repeat
	end if
end tell


-- gets markdown style link for all open presentations of PowerPoint.
set the clipboard to (the clipboard) & "# Microsoft PowerPoint" & return

tell application "Microsoft PowerPoint"
	if it is running then
		set presos to presentations
		
		repeat with p in presos
			set link to "* [" & name of p & "](" & full name of p & ")"
			set the clipboard to (the clipboard) & link & return
			
		end repeat
	end if
end tell

-- get all doc links
set the clipboard to (the clipboard) & "# Microsoft Word" & return
tell application "Microsoft Word"
	if it is running then
		set docs to documents
		
		repeat with d in docs
			set link to "* [" & name of d & "](" & full name of d & ")"
			set the clipboard to (the clipboard) & link & return
			
		end repeat
	end if
	
end tell
