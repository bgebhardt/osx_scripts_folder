-- get the current doc link as markdown

-- inspired by Hookmark's excel scripts 
-- Links with fixes for Office apps
-- [Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
-- [Using Hookmark in Microsoft OneDrive with Microsoft Office Apps – Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

tell application "Microsoft Word"
    set activeDoc to active document
    set activeDocName to name of activeDoc
    set activeDocPath to path of activeDoc
    set fullURL to posix full name of activeDoc
    if fullURL does not start with "http" then
        return "file://" & POSIX path of fullURL
	else
		set appURL to "ms-word:ofe|u|" & fullURL
	end if
	set link to "[" & activeDocName & "](" & appURL & ")"
end tell

set the clipboard to link