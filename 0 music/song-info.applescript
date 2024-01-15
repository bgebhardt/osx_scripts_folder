-- script to get song info for
-- want to use this to get info, tag it, and put in Zotera for cataloging songs.
-- add tags and comments with script too.
-- TODO: what are the tags to prompt for in a pick list?

-- Currently it just gets song info in CSV.

tell application "Music"
	set theTrack to current track
	
	properties of theTrack
	
	(* example
	{class:file track, id:91767, index:1116, name:"A band in the inn (seamless)", persistent ID:"FAF4010F4E05F189", database ID:30748, date added:date "Wednesday, December 9, 2020 at 8:53:28?PM", time:"1:55", duration:115.643997192383, artist:"Dark Fantasy Studio", album artist:"", composer:"", album:"Shadows Guild", genre:"Soundtrack", bit rate:224, sample rate:44100, track count:73, track number:0, disc count:0, disc number:0, size:6281129, volume adjustment:0, year:0, comment:"", EQ:"", kind:"MPEG audio file", media kind:song, modification date:date "Wednesday, December 9, 2020 at 8:55:14?PM", enabled:true, start:0.0, finish:115.643997192383, played count:2, played date:date "Monday, January 15, 2024 at 12:46:18?PM", skipped count:0, compilation:false, rating:100, bpm:0, grouping:"", bookmarkable:false, bookmark:0.0, shufflable:true, lyrics:"", category:"", description:"", episode number:0, unplayed:false, sort name:"band in the inn (seamless)", sort album:"", sort artist:"", sort composer:"", sort album artist:"", favorited:false, disliked:false, album favorited:false, album disliked:false, cloud status:unknown, work:"", movement:"", movement number:0, movement count:0, location:alias "Bert:Music:Media:Music:Dark Fantasy Studio:Shadows Guild:A band in the inn (seamless).mp3"}
	*)
	
	set trackInfo to id of theTrack & name of theTrack & artist of theTrack & album of theTrack & rating of theTrack
	set myString to ""
	
	set oldDelims to AppleScript's text item delimiters
	set AppleScript's text item delimiters to ","
	
	set myString to trackInfo as string
	
	set AppleScript's text item delimiters to oldDelims
	
	set theHeader to "id, name, artist, album, rating"
	myString
	
	set the clipboard to theHeader & return & myString
end tell
