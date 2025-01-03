-- script to copy contact info to clipboard

--write a script that will copy the first name, last name, primary phone number (defaulting to mobile), and primary email (defaulting to home) from the currently selected contact.

tell application "Contacts"
	set selectedPerson to item 1 of (get selection)
	
	set firstName to first name of selectedPerson
	set lastName to last name of selectedPerson
	
	--set phoneNumbers to value of phones of selectedPerson -- returns an array of phone numbers but no labels
	set phoneNumbers to phones of selectedPerson
	set primaryPhone to ""
	repeat with phoneNumber in phoneNumbers
		log "phoneNumber label: " & label of phoneNumber
		if label of phoneNumber contains "Mobile" then -- label is formated as "_$!<Mobile>!$_" for some reason
			set primaryPhone to value of phoneNumber
			exit repeat
		end if
	end repeat
	if primaryPhone is "" then
		set primaryPhone to value of item 1 of phoneNumbers
	end if
	
	set theEmails to emails of selectedPerson
	set primaryEmail to ""
	repeat with theEmail in theEmails
		log "theEmail label: " & label of theEmail
		if label of theEmail contains "Home" then -- label is formated as "_$!<Home>!$_" for some reason
			set primaryEmail to value of theEmail
			exit repeat
		end if
	end repeat
	if primaryEmail is "" then
		set primaryEmail to value of item 1 of theEmails
	end if
	
	set the clipboard to firstName & lastName & return & "Phone: " & primaryPhone & return & "Email: " & primaryEmail
end tell