-- TODO: remove this as replaced by Defer forever.
global gDeferDate
set gDeferDate to date "Tuesday, January 1, 2030 at 9:00:00 AM"

tell application "OmniFocus"
	tell content of first document window of front document
		-- TODO: fix this selection.  It no longer works in OmniFocus 3.  Look at Today script
		--Get selection
		-- assumes one selection
		set theSel to selected trees
		-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
		
		-- loop through all items and set a far out defer date; no error checking!
		repeat with theItem in theSel
			set theTask to value of theItem
			get defer date of theTask
			if defer date of theTask is missing value then
				if due date of theTask is missing value then
					if number of tasks of theTask is 0 then
						my setDeferDate(theTask)
					else
						-- don't change defer date this is a parent task (i.e. has >0 tasks
						log "Task is a parent task; skipping defer date change: " & (get name of theTask)
					end if
				else
					-- don't change defer date if there is a due date
					log "Task has a due date; skipping defer date change: " & (get name of theTask)
					properties of theTask
				end if
			else
				-- don't change a defer date that I entered.
				-- ask to change the defer date only if the list has one item
				if the (count of theSel) is 1 then
					set response to display dialog "Change the defer date of " & (get name of theTask) & " to " & gDeferDate & "?" buttons {"No", "Yes"} default button "Yes"
					
					if the button returned of response is "Yes" then
						my setDeferDate(theTask)
					end if
					
				end if
				log "Task already has a defer date: " & (get name of theTask)
			end if
		end repeat
	end tell
end tell

on setDeferDate(theTask)
	tell application "OmniFocus"
		set defer date of theTask to gDeferDate
	end tell
end setDeferDate