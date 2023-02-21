-- could use this script to copy the selected event to another calendar
-- CURRENTLY IT DOES NOT WORK THOUGH
-- but need to check for missing values when creating the event. Need to build up the properties one item at a time skipping missing values.
-- I want to move an event to another calendar though so this isn't that helpful.
-- maybe combine this with moving all "task" events to the next day to speed up things.
-- see [AppleScript: Moving an event to the next É - Apple Community](https://discussions.apple.com/thread/5703499) for ideas how

set sysinfo to system info
set osver to system version of sysinfo

considering numeric strings
	set isVenture to osver ³ "13"
end considering

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

tell application "Calendar"
	set eventReference to "[" & eTitle & "](ical://" & "eventID=" & eventID & "calendarID=" & calendarID & ")"
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
	
	-- skipping
	-- stamp date
	-- recurring events
	-- excluded dates
	-- status
	-- misses setting any alarms
	
	-- could use this script to copy the selected event to another calendar
	-- but need to check for missing values when creating the event. Need to build up the properties one item at a time skipping missing values.
	-- I want to move an event to another calendar though so this isn't that helpful.
	-- maybe combine this with moving all "task" events to the next day to speed up things.
	-- see [AppleScript: Moving an event to the next É - Apple Community](https://discussions.apple.com/thread/5703499) for ideas how
	
	tell calendar "Scheduled Tasks"
		--		make new event with properties {url:eURL, start date:eStartDate, end date:eEndDate, location:eLocation, summary:eSummary, description:eDescription, allday event:eAllday}
		--		make new event with properties {start date:eStartDate, end date:eEndDate, summary:eSummary, allday event:eAllday}
		
	end tell
	
	-- need to not include missing values
	
	eventProps
end tell

-- example props
-- {id:"59311195-518E-44E7-8B6D-D39C00B71D8B", recurrence:missing value, stamp date:date "Friday, February 17, 2023 at 5:33:01 PM", class:event, url:missing value, end date:date "Monday, February 20, 2023 at 4:30:00 PM", excluded dates:{}, description:missing value, summary:"move tax appt?", location:missing value, allday event:false, start date:date "Monday, February 20, 2023 at 4:00:00 PM", sequence:25, status:confirmed}

(*
return eventReference

tell application id "com.apple.iCal" -- Calendar
	set oEvent to event id eid of calendar id cid
	--show oEvent
end tell
*)

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
	set {eTitle, eid, cid} to text items of (do shell script "echo " & quoted form of sqlText & " | sqlite3 " & quoted form of sqlPath)
	set text item delimiters to TID
	return {eTitle, eid, cid}
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
	set {eTitle, eid, cid} to text items of (do shell script "echo " & quoted form of sqlText & " | sqlite3 " & quoted form of sqlPath)
	set text item delimiters to TID
	return {eTitle, eid, cid}
end sqlQueryVenture
