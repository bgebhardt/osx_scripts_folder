tell application "Address Book"
	set tsvOut to ""
	set emailOut to ""
	
	-- bob Adkins <radkins@digitalfountain.com>
	
	repeat with theContact in (get selection)
		repeat with i in emails of theContact
			get value of i
			set tsvOut to tsvOut & (name of theContact) & tab & (value of i) & return
			set emailOut to emailOut & (name of theContact) & " <" & (value of i) & ">" & return
		end repeat
		
	end repeat
	
	set the clipboard to tsvOut
	set the clipboard to emailOut
	
	return tsvOut
end tell