-- get all doc links

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps – Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

tell application "Microsoft Excel"
	set docs to documents
	
	set the clipboard to ""
	
	repeat with d in docs
		set link to "* " & my getDocMarkdownLink(d)
		set the clipboard to (the clipboard) & link & return
	end repeat
	
end tell

on getDocMarkdownLink(d)
	tell application "Microsoft Excel"
		set activeDocName to name of d
		set activeDocPath to path of d
		set fullURL to full name of d
		if fullURL does not start with "http" then
			set appURL to "file://" & POSIX path of fullURL
		else
			set appURL to "ms-excel:ofe|u|" & fullURL
		end if
		set link to "[" & activeDocName & "](" & appURL & ")"
		return link
	end tell
end getDocMarkdownLink