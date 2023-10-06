-- Quick and dirty script to correct main song meta data by pulling it from the song name
-- Song names encode info like artist, album, track title, etc.
-- need to check the format of the name each time

-- quick script to edit weird track names.
-- adjust the delimiter and which part of the track name to become the new track name

(*
tell application "Music"
	--name of current playlist
	--properties of current track
	--name of current track
	
	
	-- current track is currently playing track
	--	set origTrackName to name of current track 
	-- get the name of the selection; currently only works when one song is selected
	set theTrack to item 1 of selection -- get the first track
	set origTrackName to name of theTrack
	
	if length of (get selection) is not 1 then
		display dialog "select only 1 song."
		return
	end if
	
	try
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {" | "} -- declare new delimiters
		-- do script steps here
		
		set delimitedList to every text item of origTrackName
		
		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try
	
	delimitedList
	
	set newTrackName to item 2 of delimitedList
	
	tell theTrack to set name to newTrackName
	
end tell
*)


tell application "Music"
	
	set theTrack to item 1 of selection -- get the first track
	set origTrackName to name of theTrack
	
	if length of (get selection) is not 1 then
		display dialog "select only 1 song."
		return
	end if
	
	set a to name of theTrack
	set b to (words 1 through -3 of a)
	
	#	b as string
	set newTrackName to ""
	repeat with i in b
		set newTrackName to newTrackName & i & " "
	end repeat
	
	
	-- "I Can Feel It Ð Kevin Kiner" remove last 14
	
	set newTrackName2 to text 1 thru -15 of a
	tell theTrack to set name to newTrackName2
end tell