global theLog

set theDate to do shell script "date '+%m-%d-%Y'"
set defName to "group_import_log" & theDate & ".txt"

set outputFileName to choose file name with prompt "Save import log as text:" default name defName

-- read the group list
set outputFileName to choose file with prompt "Select address book group export:"

-- reads linefeed terminated files
set outputFile to open for access outputFileName
set theLineList to read outputFile using delimiter "
"

close access outputFile

theLineList

set theLog to ""

set oldDelims to AppleScript's text item delimiters
--set AppleScript's text item delimiters to {", "} -- because the export is a comma and a space I have to do this.  Ugh!  Dumb mistake.
set AppleScript's text item delimiters to {"|"}

-- now make a list of the groups
tell application "Address Book"
	set i to 0
	repeat with theLine in theLineList
		set i to i + 1
		if i mod 50 is 0 then
			log "Processed " & i & " entries."
		end if
		
		if i is greater than 11 then
			-- for testing you can uncomment exit
			-- exit repeat
		end if
		-- header: person id, person's last name, person's first name, company, organization,  group name, group id
		set t1 to "003002EA-D364-46C4-8C6C-E337CDD35D58:ABPerson, Hamm, Robert, false, Director, Network Operations, Phone, 40C93616-63C1-4E60-98CD-273F7C24784E:ABGroup" -- bad line!  Organization messed things up.
		set t2a to "00AC7820-44DC-4186-9C72-2FF83380090D:ABPerson, Gebhardt, Mark, false, missing value, Politics, 08B3B6C2-40B7-4D57-B2B5-E191B02286FD:ABGroup"
		set t2b to "00AC7820-44DC-4186-9C72-2FF83380090D:ABPerson, Gebhardt, Mark, false, missing value, Baby Announce2, 526D82D2-E5F5-46D0-A19C-5CE775612108:ABGroup"
		
		-- find the person
		-- try person id
		set thePeople to (every person whose id = text item 1 of theLine)
		if length of thePeople is 0 then
			my logg(get "PERSON NOT FOUND " & theLine)
			-- fall back to name -- future implementation
		else
			-- find the group (skip if group not recognized)
			set theGroup to (every group whose name = text item 6 of theLine)
			--set theGroup to (every group whose name = text item 3 of theLine) -- moved it up in newer version
			if length of theGroup is 0 then
				my logg(get "GROUP NOT FOUND " & theLine)
			else if length of theGroup > 1 then
				my logg(get "TOO MANY GROUPS FOUND " & theLine)
			else
				-- add them to the group name
				my logg("Adding " & name of item 1 of thePeople & " to group " & name of item 1 of theGroup)
				-- add item 1 of thePeople to item 1 of theGroup
			end if
		end if
	end repeat

	save addressbook
end tell
set AppleScript's text item delimiters to oldDelims

theLog

set outputFile to open for access outputFileName with write permission
write theLog to outputFile
close access outputFile

on logg(str)
	global theLog
	-- function actions
	--log str
	set theLog to theLog & return & str
end logg