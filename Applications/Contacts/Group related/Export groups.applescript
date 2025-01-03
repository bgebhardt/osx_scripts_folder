-- This script will export all the groups for everyone in the address book.
-- It can be used to back up group information which has a tendency to disappear recently.

set theDelim to "|"

-- if you want to choose the output file
set outputFileName to choose file name with prompt "Save address book group export as text:" default name defName
-- for running as a chron job
--set outputFileName to "Danger Mouse:Users:bgebhardt:Documents:Backups:address_book_groups:" & defName

tell application "Address Book"
	-- get person's groups
	-- set grps to groups of first item of (get selection)
	-- set g2 to group id "40C93616-63C1-4E60-98CD-273F7C24784E:ABGroup"	
	-- name of g2
	
	display dialog "Export selected people or all" ¬
		with icon 1 ¬
		buttons {"Cancel", "All", "Selection"} ¬
		default button "Selection"
	set button_pressed to button returned of result
	if button_pressed is "Selection" then
		-- action for default button button goes here
		set theList to (get selection)
	else if button_pressed is "Cancel" then
		-- action for cancel button goes here
		return
	else
		-- action for other button goes here
		set theList to (get people)
	end if

	set theFile to "person id, last name, first name, company, organization, group name, group id"
	
	repeat with thePerson in theList
		-- get their groups
		set grps to groups of thePerson
		
		-- for each group
		repeat with grp in grps
			-- write the person id, group name, group id, person's last name, person's first name, company, name,  
			set theLine to id of thePerson & theDelim & name of grp & theDelim & id of grp & theDelim & last name of thePerson & theDelim & first name of thePerson & theDelim & ¬
			company of thePerson & theDelim & name of thePerson
			log (get theLine)
			set theFile to theFile & return & theLine
			
		end repeat
		
	end repeat
	
	set theDate to do shell script "date '+%m-%d-%Y'"
	set defName to "group_export_" & theDate & ".txt"
	
	set outputFile to open for access outputFileName with write permission
	write theFile to outputFile
	close access outputFile
end tell

-- tell application "Address Book"
-- 	set emailList to {}
-- 	set peopleCount to (count every person)
-- 	repeat with i from 1 to peopleCount
-- 		set emailList to emailList & (get value of every email of person i)
-- 	end repeat
-- 	
-- 	set outputFileName to choose file name with prompt "Save address book as text:" default name "addressbook.txt"
-- 	
-- 	set outputFile to open for access outputFileName with write permission
-- 	repeat with e in emailList
-- 		write e & ", " to outputFile
-- 	end repeat
-- 	close access outputFile
-- end tell