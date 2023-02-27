-- Script moves selected event one week out.
-- It has a few issues
-- 	1. It will not always get the right event 
--  2. It may mess up the end date when moving an event to the next day
-- I use this when I decide I'm not getting any more of these task events done today.

-- change this to move out events a different number of days
set daysAdded to 1

##### First get the current event

-- taken from Hookmark scripts
-- have to get selected event from calendar preferences - no way to get it via applescript :( )
-- returns a markdown formated link to the selected event

set sysinfo to system info
set osver to system version of sysinfo

considering numeric strings
	set isVenture to osver ³ "13"
end considering

-- example defaults shell script output
-- {
--     iCal =     (
--         "59311195-518E-44E7-8B6D-D39C00B71D8B"
--     );
-- }
-- example parseDefaults output {"59311195-518E-44E7-8B6D-D39C00B71D8B"}
set defaultsReply to (do shell script "defaults read com.apple.ical SelectedEvents")
set selectedEvents to parseDefaults(defaultsReply)

if selectedEvents = {} then
	return
end if

set sEvent to the first item of selectedEvents
if isVenture then
	set {eTitle, eventID, calendarID} to sqlQueryVenture(sEvent)
else
	set {eTitle, eventID, calendarID} to sqlQuery(sEvent)
end if

#### Now get the date from that event.

tell application "Calendar"
	-- set eventReference to "[" & eTitle & "](ical://" & "eventID=" & eventID & "calendarID=" & calendarID & ")"
	set oEvent to event id eventID of calendar id calendarID
	-- show oEvent
	
	set eventProps to (properties of oEvent)
	
	set eURL to url of oEvent
	set eStartDate to start date of oEvent
	set eEndDate to end date of oEvent
	set eLocation to location of oEvent
	set eSummary to summary of oEvent
	set eDescription to description of oEvent
	set eAllday to allday event of oEvent
	
	set newEndDate to (eEndDate + daysAdded * days)
	set newStartDate to (eStartDate + daysAdded * days)
	
	#### Confirm the move
	display dialog "Moving event " & eSummary & " to date " & newStartDate
	
	#### Finally move event one week
	set end date of oEvent to newEndDate
	set start date of oEvent to newStartDate
	
end tell

on parseDefaults(resultText)
	set localUIDs to {}
	set {TID, text item delimiters} to {text item delimiters, quote}
	set resultItems to text items of resultText
	set text item delimiters to TID
	repeat with i from 1 to (count resultItems)
		if i mod 2 = 0 then set end of localUIDs to resultItems's item i
	end repeat
	return localUIDs
end parseDefaults

on sqlQuery(localUID)
	local dateString, localUID
	if localUID contains "/" then
		set {TID, text item delimiters} to {text item delimiters, "/"}
		set {dateString, localUID} to text items of localUID
		set text item delimiters to TID
	end if
	
	set sqlText to "
                SELECT DISTINCT  zcalendaritem.ztitle AS title,zcalendaritem.zshareduid AS eventID
                , znode.zuid as calID
                FROM zcalendaritem
                JOIN znode
                ON znode.z_pk = zcalendaritem.zcalendar
                AND zcalendaritem.zlocaluid = '" & localUID & "';"
	
	set sqlPath to POSIX path of (path to library folder from user domain) & "Calendars/Calendar Cache"
	set {TID, text item delimiters} to {text item delimiters, "|"}
	set {eTitle, eID, cID} to text items of (do shell script "echo " & quoted form of sqlText & " | sqlite3 " & quoted form of sqlPath)
	set text item delimiters to TID
	return {eTitle, eID, cID}
end sqlQuery


on sqlQueryVenture(localUID)
	local dateString, localUID
	if localUID contains "/" then
		set {TID, text item delimiters} to {text item delimiters, "/"}
		set {dateString, localUID} to text items of localUID
		set text item delimiters to TID
	end if
	
	set sqlPath to POSIX path of (path to library folder from user domain) & "Calendars/Calendar.sqlitedb"
	set {TID, text item delimiters} to {text item delimiters, "|"}
	
	set sqlText to "
                SELECT DISTINCT  calendaritem.summary AS title,calendaritem.unique_identifier AS eventID
                , calendaritem.calendar_id as calID
                FROM calendaritem
                WHERE uuid = '" & localUID & "';"
	set {eTitle, eID, cID} to text items of (do shell script "echo " & quoted form of sqlText & " | sqlite3 " & quoted form of sqlPath)
	set text item delimiters to TID
	return {eTitle, eID, cID}
end sqlQueryVenture