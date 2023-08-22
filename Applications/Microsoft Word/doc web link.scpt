-- gets markdown style web link for front window of PowerPoint.
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
	
	-- if you just want the link
	-- set link to fullURL & "?Web=1"
	set the clipboard to link
end tell