-- Make sure Excel has an open spreadsheet first
tell application "Microsoft Excel"
	if not (exists active workbook) then
		display dialog "No active Excel workbook found." buttons {"OK"} default button "OK" with icon stop
		return
	end if
	set docName to name of active workbook
	activate
end tell

delay 0.3

-- Snapshot the clipboard so we can detect when Copy Link actually changes it
set originalClipboard to ""
try
	set originalClipboard to (the clipboard as text)
end try

-- Try to click the menu item, fail loudly if it doesn't work
try
	tell application "System Events"
		tell process "Microsoft Excel"
			click menu item "Copy Link..." of menu 1 of menu item "Share" of menu 1 of menu bar item "File" of menu bar 1
		end tell
	end tell
on error errMsg number errNum
	display dialog "Couldn't click File ? Share ? Copy Link…" & return & return & ¬
		"Error: " & errMsg & " (" & errNum & ")" & return & return & ¬
		"Check that Excel is frontmost and that Accessibility permissions are granted in System Settings ? Privacy & Security ? Accessibility." ¬
		buttons {"OK"} default button "OK" with icon stop
	return
end try

-- Poll the clipboard until it changes to a new URL
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
	display dialog "Copy Link… was clicked, but no URL appeared on the clipboard within 5 seconds." buttons {"OK"} default button "OK" with icon stop
	return
end if

if theURL is equal to originalClipboard then
	display dialog "Clipboard didn't change — Copy Link… may not have completed." buttons {"OK"} default button "OK" with icon stop
	return
end if

-- Build display name
if docName ends with ".xlsx" then
	set displayName to text 1 thru -6 of docName
else if docName ends with ".xlsm" then
	set displayName to text 1 thru -6 of docName
else if docName ends with ".xls" then
	set displayName to text 1 thru -5 of docName
else
	set displayName to docName
end if

-- Escape HTML special chars
set escapedName to displayName
set escapedName to my replaceText(escapedName, "&", "&amp;")
set escapedName to my replaceText(escapedName, "<", "&lt;")
set escapedName to my replaceText(escapedName, ">", "&gt;")

set htmlLink to "<a href=\"" & theURL & "\">" & escapedName & "</a>"

-- Put HTML on clipboard for rich-text pasting
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