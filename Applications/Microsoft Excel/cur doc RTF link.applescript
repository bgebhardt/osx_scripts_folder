-- Script to get the active document name and create a link to it based on what is in clipboard.
-- turning HTML to rtf inspired by and copied from https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437
-- also inspired by hookmark links with fixes for Office apps
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps – Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

-- exit if no pandoc
if not my checkForPandoc() then
	display dialog "pandoc not found. Install pandoc with Homebrew: brew install pandoc"
	return
end if

tell application "Microsoft Excel"
	set link to my getDocHTMLLink(active workbook)
	my copyHTMLasRTFtoClipboard(link)
end tell

on getDocHTMLLink(d)
	tell application "Microsoft Excel"
		set activeDocName to name of d
		set activeDocPath to path of d
		set fullURL to full name of d
		if fullURL does not start with "http" then
			set appURL to "file://" & POSIX path of fullURL
		else
			set appURL to "ms-excel:ofe|u|" & fullURL
		end if
		-- markdown link: set link to "[" & activeDocName & "](" & appURL & ")"
		set link to "<a href=\"" & appURL & "\">" & activeDocName & "<a>"
		
		return link
	end tell
end getDocHTMLLink

on copyHTMLasRTFtoClipboard(pstrHTML)
	
	-- REWRITTEN AS RTF AND COPIED TO THE CLIPBOARD
	
	-- TODO: switch script back to markdown
	set lstrCMD to "echo " & quoted form of pstrHTML & " |  /opt/homebrew/bin/pandoc -standalone --from html --to rtf  | pbcopy -Prefer rtf"
	--set lstrCMD to "echo " & quoted form of pstrHTML & " | textutil -format html -font Arial -fontsize 28 -convert rtf -stdin -stdout | pbcopy -Prefer rtf"
	
	do shell script lstrCMD
	
end copyHTMLasRTFtoClipboard

on checkForPandoc()
	set lstrCMD to "/opt/homebrew/bin/pandoc --version"
	try
		do shell script lstrCMD
		return true
	on error
		return false
	end try
end