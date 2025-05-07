-- get all doc links from every office application

-- Useful link: [macos - How to check in AppleScript if an app is running, without launching it - via osascript utility - Stack Overflow](https://stackoverflow.com/questions/16064957/how-to-check-in-applescript-if-an-app-is-running-without-launching-it-via-osa/16069999#16069999)

-- toggle this to send a sharepoint link vs a local file link.
global gMacAppLink
set gMacAppLink to false

set the clipboard to ""

set the clipboard to (the clipboard) & "# Microsoft Excel" & return

tell application "Microsoft Excel"
	if it is running then
		set docs to documents
		
		repeat with d in docs
			set theLink to my getExcelDocLink(d)
			set link to "* [" & name of d & "](" & theLink & ")"
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
			set theLink to my getPowerPointDocLink(p)
			set link to "* [" & name of p & "](" & theLink & ")"
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
			set theLink to my getWordDocLink(d)
			set link to "* [" & name of d & "](" & theLink & ")"						
			set the clipboard to (the clipboard) & link & return
			
		end repeat
	end if
	
end tell

-- Function to get a Word document link
on getWordDocLink(doc)
	global gMacAppLink
	tell application "Microsoft Word"
		if it is running then
			try
				set activeDocName to name of doc
				set activeDocPath to path of doc
				set fullURL to full name of doc
				
				if fullURL does not start with "http" then
					-- For local files, create a file URL
					-- TODO: improve this error return
					set fileURL to "file://" & POSIX path of fullURL
				else
					set fileURL to fullURL
				end if
				
				-- Application-specific URL (Mac only)
				set appURL to "ms-word:ofe|u|" & fullURL
				
				-- Web URL for SharePoint/OneDrive documents
				-- create an encoded url version (without ms-word pattern which likely onely works on Mac)
				-- need to encode the doc name before putting it in the url
				set encodedDocName to my encodeText(activeDocName, true, false)
				set webURL to activeDocPath & "/" & encodedDocName & "?web=1"
				
				if gMacAppLink is true then
					return appURL
				else
					return webURL
				end if
			on error errMsg
				return "Error getting Word link: " & errMsg
			end try
		else
			return "Microsoft Word is not running"
		end if
	end tell
end getWordDocLink

-- Function to get a PowerPoint presentation link
on getPowerPointDocLink(preso)
	global gMacAppLink
	tell application "Microsoft PowerPoint"
		if it is running then
			try
				set activeDocName to name of preso
				set activeDocPath to path of preso
				set fullURL to full name of preso
				
				if fullURL does not start with "http" then
					-- For local files, create a file URL
					-- TODO: improve this error return
					set fileURL to "file://" & POSIX path of fullURL
				else
					set fileURL to fullURL
				end if
				
				-- Application-specific URL
				set appURL to "ms-powerpoint:ofe|u|" & fullURL
				
				-- Web URL for SharePoint/OneDrive presentations
				set encodedDocName to my encodeText(activeDocName, true, false)
				set webURL to activeDocPath & "/" & encodedDocName & "?web=1"
				
				if gMacAppLink is true then
					return appURL
				else
					return webURL
				end if
			on error errMsg
				return "Error getting PowerPoint link: " & errMsg
			end try
		else
			return "Microsoft PowerPoint is not running"
		end if
	end tell
end getPowerPointDocLink


-- Function to get an Excel workbook link
on getExcelDocLink(workbook)
	global gMacAppLink
	tell application "Microsoft Excel"
		if it is running then
			try
				set activeDocName to name of workbook
				set activeDocPath to path of workbook
				set fullURL to full name of workbook
				
				if fullURL does not start with "http" then
					-- For local files, create a file URL
					-- TODO: improve this error return
					set fileURL to "file://" & POSIX path of fullURL
				else
					set fileURL to fullURL
				end if
				
				-- Application-specific URL
				set appURL to "ms-excel:ofe|u|" & fullURL
				
				-- Web URL for SharePoint/OneDrive workbooks
				set encodedDocName to my encodeText(activeDocName, true, false)
				set webURL to activeDocPath & "/" & encodedDocName & "?web=1"
				
				if gMacAppLink is true then
					return appURL
				else
					return webURL
				end if
			on error errMsg
				return "Error getting Excel link: " & errMsg
			end try
		else
			return "Microsoft Excel is not running"
		end if
	end tell
end getExcelDocLink



-- from [Mac Automation Scripting Guide: Encoding and Decoding Text](https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/EncodeandDecodeText.html)
on encodeCharacter(theCharacter)
	set theASCIINumber to (the ASCII number theCharacter)
	set theHexList to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}
	set theFirstItem to item ((theASCIINumber div 16) + 1) of theHexList
	set theSecondItem to item ((theASCIINumber mod 16) + 1) of theHexList
	return ("%" & theFirstItem & theSecondItem) as string
end encodeCharacter

on encodeText(theText, encodeCommonSpecialCharacters, encodeExtendedSpecialCharacters)
	set theStandardCharacters to "abcdefghijklmnopqrstuvwxyz0123456789"
	set theCommonSpecialCharacterList to "$+!'/?;&@=#%><{}\"~`^\\|*"
	set theExtendedSpecialCharacterList to ".-_:"
	set theAcceptableCharacters to theStandardCharacters
	if encodeCommonSpecialCharacters is false then set theAcceptableCharacters to theAcceptableCharacters & theCommonSpecialCharacterList
	if encodeExtendedSpecialCharacters is false then set theAcceptableCharacters to theAcceptableCharacters & theExtendedSpecialCharacterList
	set theEncodedText to ""
	repeat with theCurrentCharacter in theText
		if theCurrentCharacter is in theAcceptableCharacters then
			set theEncodedText to (theEncodedText & theCurrentCharacter)
		else
			set theEncodedText to (theEncodedText & encodeCharacter(theCurrentCharacter)) as string
		end if
	end repeat
	return theEncodedText
end encodeText
