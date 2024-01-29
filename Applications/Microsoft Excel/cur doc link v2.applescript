-- gets a url to the front window of Microsoft Excel.
-- can choose a link that will download if pasted into browser or a link format that opens in the Mac office app (set gMacAppLink).
-- when pasting the link into a Microsft app it should resolve to a clickable link that opens in web.

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps Ð Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)

set gMacAppLink to false

tell application "Microsoft Excel"
	set activeDoc to active workbook
	set activeDocName to name of activeDoc
	set activeDocPath to path of activeDoc
	set fullURL to full name of activeDoc
	if fullURL does not start with "http" then
		-- TODO: improve this error return
		return "file://" & POSIX path of fullURL
	end if
    -- this URL will open in the application
	set appURL to "ms-word:ofe|u|" & fullURL

    -- create an encoded url version (without ms-word pattern which likely onely works on Mac)
	-- need to encode the doc name before putting it in the url
	set encodedDocName to my encodeText(activeDocName, true, false)
	set docURL to activeDocPath & "/" & encodedDocName	

    if gMacAppLink is true then 
        return appURL
    else
        return docURL
    end if
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