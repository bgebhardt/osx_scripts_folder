
-- read the group list
set outputFileName to choose file with prompt "Select address book group name export:"

-- reads linefeed terminated files
set outputFile to open for access outputFileName
set theLineList to read outputFile using delimiter "
"

close access outputFile

theLineList

set oldDelims to AppleScript's text item delimiters
set AppleScript's text item delimiters to {"|"}

-- now make a list of the groups
set grps to {}
repeat with theLine in theLineList
	--log (get theLine)
	-- filter out smart groups
	if text item 2 of theLine does not contain "SmartGroup" then
		set grps to grps & (text item 1 of theLine as list)
	end if
	
end repeat

set AppleScript's text item delimiters to oldDelims

tell application "Address Book"
	-- for each group	
	
	repeat with grp_name in grps
		-- if it does not exist create it	
		if name of every group does not contain grp_name then
			set theNewGroup to make new group with properties {name:grp_name}
			--> group id "D988FC9B-62FC-4ABA-9C70-E5F5821D2724:ABGroup" of application "Address Book"			
			-- add me to it (optional)
			-- add my card to theNewGroup
		end if
				
	end repeat	

	save addressbook
	name of every group
end tell
