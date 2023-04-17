-- taken from Hookmark scripts
-- have to get selected event from calendar preferences - no way to get it via applescript :( )
-- returns the event name and puts it on the clipboard

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

set the clipboard to eTitle

return eTitle

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
