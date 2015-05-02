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

property startTime : 8 --Start hour for items not previously assigned a start time (24 hr clock)
property dueTime : 8 --Due hour for items not previously assigned a due time (24 hr clock)
property dayToDeferTo : Saturday -- set to null to not find next day to defer to
-- typical value is Saturday to defer an event to the weekend
property timeToSetOffset : 1 * days  -- number of seconds to set time.

property deferForeverDate : date "Tuesday, January 1, 2030 at 9:00:00 AM"
(* common time offsets
0= today
86400 = tomorrow
604800 = 1 week
2419200 = 4 weeks (approximately a month)
*)

log ("Time to set offset is " & timeToSetOffset & " and dayToDeferTo is " & dayToDeferTo)

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
		
		log "list of tasks: "
		log (get theTasksSelected)
		
		-- loop through all items; no error checking!
		repeat with theItem in theTasksSelected
			log ("task name: " & name of theItem)
			log (get theItem)
			-- TODO: figure out way to do this more generally.  Maybe if deferForeverDate is set then call this
			my setDateToFoverever(theItem)
		end repeat
	end tell
	
	-- for debugging
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	-- my setDate(theTask)
end tell

-- TODO merge into standard script
on setDateToFoverever(theTask)
	tell application "OmniFocus"
		set defer date of theTask to deferForeverDate
	end tell	
end


on setDate(theTask)
	tell application "OmniFocus"
		
		if due date of theTask is missing value then
			my setTaskStartDate(theTask)
		else -- due date present
			if defer date of theTask is missing value then
				my setTaskDueDate(theTask)
			else -- defer date pressent
				-- set both only if dates match
				if due date of theTask = defer date of theTask then
					my setTaskStartDate(theTask)
					my setTaskDueDate(theTask)
				else -- otherwise just set start date
					my setTaskStartDate(theTask)
				end if
			end if
		end if
	end tell
	
	my fixDueDateIfBeforeDeferDate(theTask)	
end setDate

on setTaskStartDate(selectedItem)
	set success to false
	tell application "OmniFocus"
		try -- note no catch error handling, all errors return false
			set originalStartDateTime to defer date of selectedItem
			
			if (originalStartDateTime is not missing value) then
				set defer date of selectedItem to my calculateDate(originalStartDateTime)
				set success to true
			else
				-- TODO BUG: this doesn't account for the new dayToDeferTo fature!  Need to fix to use calculateDate
				set defer date of selectedItem to (my getCurrentDatePlusOffset() + (startTime * hours))
				set success to true
			end if
		end try
	end tell
	return success
end setTaskStartDate

on setTaskDueDate(selectedItem)
	set success to false
	tell application "OmniFocus"
		try -- note no catch error handling, all errors return false
			set originalDueDateTime to due date of selectedItem
			if (originalDueDateTime is not missing value) then
				--TODO BUG: this doesn't account for the new dayToDeferTo fature!  Need to fix to use calculateDate
				set due date of selectedItem to my calculateDate(originalDueDateTime)
				set success to true
			else
				set due date of selectedItem to (my getCurrentDatePlusOffset() + (dueTime * hours))
				set success to true
			end if
		end try
	end tell
	return success
end setTaskDueDate

-- TODO: With a setting os dayToDeferTo as Saturday and timeToSetOffset as 1the script in effect sets out to the next Saturday to defer to the weekend.  On additional runs on the same item it in effect adds a week each time.  This is a little non-intuitive and should consider changing the calculateDate logic to find the next dayToDeferTo but if already on that date then add the timeToSetOffset.  That logic would be slightly more clear I think.
on calculateDate(originalDate)
	log ("original date: " & originalDate)
	
	set returnDate to my getDateToSetBasedOnOriginalDate(originalDate)

	if dayToDeferTo is not null then
		set returnDate to my getDateOfNextWeekday(returnDate, dayToDeferTo)
	end if

	log ("calculateDate's returnDate: " & returnDate)
		
	return returnDate
end calculateDate

-- Simple function to find next weekday based on post at:  http://canadian-fury.com/2012/08/31/performing-fixed-point-date-arithmetic-in-textexpander-using-applescript/
on getDateOfNextWeekday(originalDate, nextWeekdayToFind)
	set returnDate to originalDate
	
	repeat until returnDate's weekday is nextWeekdayToFind
		set returnDate to returnDate + days
	end repeat
	
	log ("getDateOfNextWeekday : " & returnDate)
	
	return returnDate
end getDateOfNextWeekday

-- TODO BUG: Example: in the tomorrow case if I run once it goes to tomorrow.  If I run again it won't increment again.  Only increments if you're not exactly offset away.  If theDateToSet = originalDate then we should just add the offset.
-- TODO BUG: Unexpected behavior: In the tomorrow case for any dates in the future it will increment when maybe I'd like to move it back to tomorrow.  Better behavior: If the original date is one timeToSetOffset +/- than I can assume the script has been run again to increment the date.  If not then use theDateToSet instead.  One Example: in the tomorrow case (1 day offset) if today is 1/6 and the task's date is 1/10 then that is more than one interval and it shoult be set to 1/7.  If it is 1/7 then it should be set ot 1/8.
-- TODO Need to figure out script libraries.  Getting to hard.
-- TODO Need to do test driven dev.  too many bugs. :)
on getDateToSetBasedOnOriginalDate(originalDate)
	set theDateToSet to my getCurrentDatePlusOffset()
	log ("theDateToSet: " & theDateToSet)
	
	-- special case for offset 0 (today).  never return the original date
	if timeToSetOffset = 0 then
		return (theDateToSet + (time of originalDate))
	end if
	
	-- if original date is greater than the current date + offset interval then just add the offset to the original date
	if originalDate > theDateToSet then
		return (originalDate + timeToSetOffset)
	end if
	-- otherwise return current plus offset time; be sure to preserve the original start time
	return (theDateToSet + (time of originalDate))
end getDateToSetBasedOnOriginalDate

on getCurrentDatePlusOffset()
	-- subtract the current time to return a date starting at midnight
	return (current date) - (time of (current date)) + timeToSetOffset
end getCurrentDatePlusOffset

on fixDueDateIfBeforeDeferDate(theTask)
	
	tell application "OmniFocus"
		
		if due date of theTask is not missing value then
			if defer date of theTask is not missing value then
				if due date of theTask < defer date of theTask then
					set due date of theTask to defer date of theTask
				end if
			end if
		end if
	end tell
end fixDueDateIfBeforeDeferDate


-- ===================
-- NOTE: The interval code below has never been used.  Left here as an exmaple.

-- determine if the two dates are within an week interval.
on isIntervalOfAWeek(date1, date2)
	isIntervalOfXDays(date1, date2, 7)
end isIntervalOfAWeek

-- determine if the two dates are within an interval of days.
-- example: if daysInterval is 7 then will check if the dates are X weeks apart
on isIntervalOfXDays(date1, date2, daysInterval)
	set daysApart to getDayNumber(date1) - getDayNumber(date2)
	if (daysApart mod daysInterval) is 0 then
		return true
	end if
	return false
end isIntervalOfXDays

-- get day number based on current year
on getDayNumber(theDate)
	set currentYear to date ("1/1/" & (year of (current date)))
	return (theDate - currentYear) div days
end getDayNumber



