(*
Omnifocus script to set due or defer date to today.  
It intelligently moves the date based on which is filled in.
-- (c) 2014 Bryan Gebhardt

Inspired by Dan Byler's script.  Also borrowed some of the code.

	# LICENSE #
	
	Copyright © 2011 Dan Byler (contact: dbyler@gmail.com)
	Licensed under MIT License (http://www.opensource.org/licenses/mit-license.php) 
	(TL;DR: do whatever you want with it.)
*)

property startTime : 9 --Start hour for items not previously assigned a start time (24 hr clock)
property dueTime : 9 --Due hour for items not previously assigned a due time (24 hr clock)
property timeToSetOffset : 0 -- number of seconds to set time.  Added to current day.  0= today; 86400 = tomorrow

tell application "OmniFocus"
	tell content of first document window of front document
		--Get selection
		-- assumes one selection
		set theSel to (selected trees where class of its value is not item and class of its value is not folder)
		
		-- loop through all items; no error checking!
		repeat with theItem in theSel
			set theTask to value of theItem
			my setDate(theTask)
		end repeat
	end tell
	
	-- for debugging
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	-- my setDate(theTask)
end tell

on setDate(theTask)
	tell application "OmniFocus"
		set theDateToSet to (current date) - (time of (current date)) + timeToSetOffset
		
		if due date of theTask is missing value then
			my startToday(theTask, theDateToSet)
		else -- due date present
			if defer date of theTask is missing value then
				my dueToday(theTask, theDateToSet)
			else -- defer date pressent
				my startToday(theTask, theDateToSet)
				my dueToday(theTask, theDateToSet)
			end if
		end if
	end tell
end setDate

on startToday(selectedItem, theDateToSet)
	set success to false
	tell application "OmniFocus"
		try
			set originalStartDateTime to defer date of selectedItem
			if (originalStartDateTime is not missing value) then
				--Set new start date with original start time
				set defer date of selectedItem to (theDateToSet + (time of originalStartDateTime))
				set success to true
			else
				set defer date of selectedItem to (theDateToSet + (startTime * hours))
				set success to true
			end if
		end try
	end tell
	return success
end startToday

on dueToday(selectedItem, theDateToSet)
	set success to false
	tell application "OmniFocus"
		try
			set originalDueDateTime to due date of selectedItem
			if (originalDueDateTime is not missing value) then
				--Set new due date with original due time
				set originalDueStartDate to originalDueDateTime - (time of originalDueDateTime)
				set theDelta to (theDateToSet - originalDueStartDate) / 86400
				set newDueDateTime to (originalDueDateTime + (theDelta * days))
				set due date of selectedItem to newDueDateTime
				set originalStartDateTime to defer date of selectedItem
				if (originalStartDateTime is not missing value) then
					set newStartDateTime to (originalStartDateTime + (theDelta * days))
					set defer date of selectedItem to newStartDateTime
				end if
				set success to true
			else
				set due date of selectedItem to (theDateToSet + (dueTime * hours))
				set success to true
			end if
		end try
	end tell
	return success
end dueToday

