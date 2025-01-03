tell application "Address Book"
	set theFile to "group name, group id" & return
	repeat with grp in (get groups)
		set theLine to name of grp & "|" & id of grp
		set theFile to theFile & return & theLine
	end repeat

	set theFile2 to (get groups)
	
	set theFile to theFile & return & return & theFile2
	
	set theDate to do shell script "date '+%m-%d-%Y'"
	set defName to "group_name_export_" & theDate & ".txt"
	
	set outputFileName to choose file name with prompt "Save address book group name export as text:" default name defName
	
	set outputFile to open for access outputFileName with write permission
	write theFile to outputFile
	close access outputFile	
	
end tell