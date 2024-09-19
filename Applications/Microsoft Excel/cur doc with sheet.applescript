-- gets a url to the front window of Microsoft Excel and the current sheet.
-- output example: 

-- can choose a link that will download if pasted into browser or a link format that opens in the Mac office app (set gMacAppLink).
-- when pasting the link into a Microsft app it should resolve to a clickable link that opens in web.

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps Ð Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)

-- get the current doc link as markdown

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps â€“ Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

tell application "Microsoft Excel"
	set activeDoc to active workbook
	set activeDocName to name of active workbook
	set activeDocPath to path of active workbook
	set fullURL to full name of active workbook
	if fullURL does not start with "http" then
		set appURL to "file://" & POSIX path of fullURL
	else
		set appURL to "ms-excel:ofe|u|" & fullURL
	end if
	set link to "[" & activeDocName & "](" & appURL & ")"

    set currentSheetName to name of active sheet of active workbook
    -- display dialog "The current sheet name is: " & currentSheetName
	set link to "sheet \"" & currentSheetName & "\" in " & link

end tell

set the clipboard to link