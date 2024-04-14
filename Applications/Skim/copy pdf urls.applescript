# script to get all the open documents and their paths in rough markdown list format.
tell application "Skim"
	set URL_list to ""
	
	set theFile to file of document of window 1
	
	
	theFile as text
	
	repeat with win in windows
		-- log (get properties of win)
		get document of win
		set docName to (get name of win) -- window name contains name of doc and page number on
		get name of document of win -- file name
		set filePath to (get file of document of win as text) -- file path
		set the URL_list to URL_list & return & "- " & (docName) & return & "    - " & filePath
		
	end repeat
	--set docInfo to (info of document of window 1)
	--	URL_list
	set the clipboard to URL_list
	
end tell
