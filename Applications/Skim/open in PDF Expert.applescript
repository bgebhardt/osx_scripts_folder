# script to open current pdf in PDF Expert
tell application "Skim"
	set theFile to file of document of window 1
	POSIX path of theFile
	
	
	set shellScript to "open -a \"/Applications/PDF Expert.app\" "
	
	--shellScript & "\"" & POSIX path of theFile & "\""
	do shell script shellScript & "\"" & POSIX path of theFile & "\""
	
	-- shell script example
	-- open -a "/Applications/PDF Expert.app" "/Users/bryan/test.pdf"
end tell
