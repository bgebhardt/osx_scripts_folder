-- gets markdown style web link for front window of Microsoft Word.
-- the web link is better for sharing with other users and is faster than the "share" button in office apps.

-- The key is to add "?Web=1" to open in web. Web=0 will download the file I think.
-- https://microsoft.sharepoint-df.com/teams/SomeFile?Web=1 will open in web page
-- found here: [How to get a Download link for a document in SharePoint library for anonymous users - SharePoint Stack Exchange](https://sharepoint.stackexchange.com/questions/184653/how-to-get-a-download-link-for-a-document-in-sharepoint-library-for-anonymous-us)

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps ‚Äì Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

tell application "Microsoft Word"
	set activeDoc to active document
	set activeDocName to name of activeDoc
	set activeDocPath to path of activeDoc
	set fullURL to full name of activeDoc
	if fullURL does not start with "http" then
		-- TODO: improve this error return
		display dialog "can't make " & activeDocName & " into a web link."
		return "can't make " & activeDocName & " into a web link."
		--return "file://" & POSIX path of fullURL
	end if
	-- if you want it in markdown format
	set link to "[" & activeDocName & "](" & fullURL & "?Web=1)"
	
	-- need to encode the doc name before putting it in the url
	set encodedDocName to my encodeText(activeDocName, true, false)
	
	set docURL to activeDocPath & "/" & encodedDocName & "?Web=1"
	
	-- if you want it in markdown format
	--set link to "[" & activeDocName & "](" & docURL & ")"
	
	-- if you just want the link
	set link to docURL & "?Web=1"
	
	set the clipboard to link
end tell

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