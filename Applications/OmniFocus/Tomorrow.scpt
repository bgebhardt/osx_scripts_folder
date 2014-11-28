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
property timeToSetOffset : 86400 -- number of seconds to set time.  Added to current day.  0= today; 86400 = tomorrow

tell application "OmniFocus"
	tell content of first document window of front document
		--Get selection
		-- assumes one selection
		set theSel to (selected trees where class of its value is not item and class of its value is not folder)
		-- need to create a list of tasks before changing dates as that changes what the trees point to
		set theTasksSelected to {}
		-- loop through all items; no error checking!
		repeat with theItem in theSel
			set the end of theTasksSelected to value of theItem
		end repeat
		
		log (get theTasksSelected)
		
		-- loop through all items; no error checking!
		repeat with theItem in theTasksSelected
			log (get theItem)
			log (get name of theItem)
			my setDate(theItem)
		end repeat
	end tell
	
	-- for debugging
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	-- my setDate(theTask)
end tell

on setDate(theTask)
	set theDateToSet to (current date) - (time of (current date)) + timeToSetOffset
	tell application "OmniFocus"
		
		if due date of theTask is missing value then
			my startToday(theTask, theDateToSet)
		else -- due date present
			if defer date of theTask is missing value then
				my dueToday(theTask, theDateToSet)
			else -- defer date pressent
				-- set both only if dates match
				if due date of theTask = defer date of theTask then
					my startToday(theTask, theDateToSet)
					my dueToday(theTask, theDateToSet)
				else -- otherwise just set start date
					my startToday(theTask, theDateToSet)
				end if
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
				--Set new start date with original start time
				set due date of selectedItem to (theDateToSet + (time of originalDueDateTime))
				set success to true
			else
				set due date of selectedItem to (theDateToSet + (dueTime * hours))
				set success to true
			end if
		end try
	end tell
	return success
end dueToday