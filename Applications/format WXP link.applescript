-- this will copy the link of the front most Word, Excel, PowerPoint document in a rich text format.

-- Detect which Office app is frontmost
tell application "System Events"
	set frontApp to name of first application process whose frontmost is true
end tell

set appName to ""
set docObjectGetter to ""

if frontApp is "Microsoft PowerPoint" then
	set appName to "Microsoft PowerPoint"
	set docObjectType to "presentation"
else if frontApp is "Microsoft Word" then
	set appName to "Microsoft Word"
	set docObjectType to "document"
else if frontApp is "Microsoft Excel" then
	set appName to "Microsoft Excel"
	set docObjectType to "workbook"
else
	display dialog "Front app is " & frontApp & "." & return & "Switch to PowerPoint, Word, or Excel first." buttons {"OK"} default button "OK" with icon stop
	return
end if

-- Get the active document name based on app type
set docName to ""
try
	if docObjectType is "presentation" then
		tell application "Microsoft PowerPoint"
			if not (exists active presentation) then error "no active presentation"
			set docName to name of active presentation
			activate
		end tell
	else if docObjectType is "document" then
		tell application "Microsoft Word"
			if not (exists active document) then error "no active document"
			set docName to name of active document
			activate
		end tell
	else if docObjectType is "workbook" then
		tell application "Microsoft Excel"
			if not (exists active workbook) then error "no active workbook"
			set docName to name of active workbook
			activate
		end tell
	end if
on error errMsg
	display dialog "No active document in " & appName & "." & return & errMsg buttons {"OK"} default button "OK" with icon stop
	return
end try

delay 0.3

-- Snapshot clipboard to detect change
set originalClipboard to ""
try
	set originalClipboard to (the clipboard as text)
end try

-- Click File ? Share ? Copy Link...
try
	tell application "System Events"
		tell process appName
			click menu item "Copy Link..." of menu 1 of menu item "Share" of menu 1 of menu bar item "File" of menu bar 1
		end tell
	end tell
on error errMsg number errNum
	display dialog "Couldn't click File ? Share ? Copy Link… in " & appName & "." & return & return & ¬
		"Error: " & errMsg & " (" & errNum & ")" & return & return & ¬
		"Check Accessibility permissions in System Settings ? Privacy & Security." ¬
		buttons {"OK"} default button "OK" with icon stop
	return
end try

-- Poll clipboard for new URL
set attempts to 0
set theURL to originalClipboard
repeat until (theURL starts with "http" and theURL is not equal to originalClipboard) or attempts > 20
	delay 0.25
	try
		set theURL to (the clipboard as text)
	end try
	set attempts to attempts + 1
end repeat

if theURL does not start with "http" then
	display dialog "Copy Link… didn't produce a URL within 5 seconds." buttons {"OK"} default button "OK" with icon stop
	return
end if

if theURL is equal to originalClipboard then
	display dialog "Clipboard didn't change — Copy Link… may not have completed." buttons {"OK"} default button "OK" with icon stop
	return
end if

-- Strip extension for cleaner display name
set displayName to docName
set extensions to {".pptx", ".docx", ".xlsx", ".xlsm", ".ppt", ".doc", ".xls"}
repeat with ext in extensions
	if docName ends with ext then
		set displayName to text 1 thru ((count of docName) - (count of ext)) of docName
		exit repeat
	end if
end repeat

-- Escape HTML special chars
set escapedName to displayName
set escapedName to my replaceText(escapedName, "&", "&amp;")
set escapedName to my replaceText(escapedName, "<", "&lt;")
set escapedName to my replaceText(escapedName, ">", "&gt;")

set htmlLink to "<a href=\"" & theURL & "\">" & escapedName & "</a>"

-- Set rich-text clipboard
try
	set hexHTML to do shell script "printf %s " & quoted form of htmlLink & " | xxd -p | tr -d '\\n'"
	do shell script "osascript -e 'set the clipboard to «data HTML" & hexHTML & "»'"
on error errMsg
	display dialog "Couldn't set rich-text clipboard:" & return & errMsg buttons {"OK"} default button "OK" with icon stop
	return
end try

return htmlLink

on replaceText(theText, searchString, replaceString)
	set AppleScript's text item delimiters to searchString
	set tempList to text items of theText
	set AppleScript's text item delimiters to replaceString
	set theText to tempList as text
	set AppleScript's text item delimiters to ""
	return theText
end replaceText