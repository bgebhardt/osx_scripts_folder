-- Omnifocus script to swap due date and defer date times.  Allows me to push things easily to the evening.
-- swap morning evening times.  Assumes fixed morning and evening time set in function.
-- if time is after noon then swaps to morning; otherwise swaps to evening time.
-- (c) 2014 Bryan Gebhardt

property theMorningTime : 28800 -- 8:00:00 AM in seconds
property theEveningTime : 68400 -- 7:00:00 PM in seconds
property noonTime : 43200 -- 12:00:00 PM in seconds

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
			my swapMorningEveningDueDateDeferDateTimes(theItem)
		end repeat
	end tell
	
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	
end tell

on swapMorningEveningDueDateDeferDateTimes(theTask)
	tell application "OmniFocus"
		if due date of theTask is not missing value then
			set due date of theTask to my getSwappedMorningEveningTime(due date of theTask)		
		end if
		
		if defer date of theTask is not missing value then
			set defer date of theTask to my getSwappedMorningEveningTime(defer date of theTask)
		end if
		
	end tell
end swapMorningEveningDueDateDeferDateTimes


on getSwappedMorningEveningTime(dateToChange)
	log (get dateToChange)
	
	if time of dateToChange > noonTime then
		set time of dateToChange to theMorningTime
	else
		set time of dateToChange to theEveningTime
	end if

	return dateToChange
end