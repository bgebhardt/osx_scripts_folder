-- Script moves all events in the "Schedueld Tasks" calendar to the next day.
-- I use this when I decide I'm not getting any more of these task events done today.

set startTime to current date
-- sets to midnight of the next day so we get all events between now and the end of the day
set endTime to (date (date string of startTime)) + 1 * days 

tell application "Calendar"
	set theEvents to {}     
	
    -- get greater than current date but less than midnight on current date.
	tell calendar "Scheduled Tasks"
		set cur to every event whose start date is greater than or equal to startTime
		repeat with anEvent in cur
			if start date of anEvent is less than endTime then
				set theEvents to theEvents & {anEvent}
			end if
		end repeat
	end tell
	
    -- move all events to the next day
	repeat with anEvent in theEvents
		log (get summary of anEvent)
		set eventStartDate to start date of anEvent
		set eventEndDate to end date of anEvent
		
		set end date of anEvent to eventEndDate + 1 * days
		set start date of anEvent to eventStartDate + 1 * days
		
	end repeat
end tell
