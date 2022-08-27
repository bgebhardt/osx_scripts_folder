-- script to test parsing different song namepath to temporary items

tell application "Music"
	--name of current playlist
	-- properties of current track
	--name of current track
	
	
	(*	--	"Foundation- Season 1 (Apple TV+ Original Series Soundtrack) by Bear McCreary - 003 - Foundation- Season 1 - Anacreon (Apple TV+ Original Series Soundtrack) by Bear McCreary"
	{class:file track, id:411737, index:81, name:"Foundation- Season 1 (Apple TV+ Original Series Soundtrack) by Bear McCreary - 003 - Foundation- Season 1 - Anacreon (Apple TV+ Original Series Soundtrack) by Bear McCreary", persistent ID:"70223B876BFF5B79", database ID:411540, date added:date "Monday, May 30, 2022 at 10:47:09 PM", time:"2:01", duration:121.103996276855, artist:"Positive Sounds", album artist:"", composer:"", album:"", genre:"", bit rate:320, sample rate:48000, track count:0, track number:0, disc count:0, disc number:0, size:4845372, volume adjustment:0, year:0, comment:"", EQ:"", kind:"MPEG audio file", media kind:song, modification date:date "Monday, May 30, 2022 at 10:48:26 PM", enabled:true, start:0.0, finish:121.103996276855, played count:0, skipped count:0, compilation:false, rating:0, bpm:0, grouping:"", bookmarkable:false, bookmark:0.0, shufflable:true, lyrics:"", category:"", description:"", episode number:0, unplayed:true, sort name:"", sort album:"", sort artist:"", sort composer:"", sort album artist:"", loved:false, disliked:false, album loved:false, album disliked:false, cloud status:unknown, work:"", movement:"", movement number:0, movement count:0, location:alias "Macintosh HD:Users:brgebhar:Music:iTunes:iTunes Media:Music:Positive Sounds:Unknown Album:Foundation- Season 1 (Apple TV+ Original Series Soundtrack) by Bear McCreary - 003 - Foundation- Season 1 - Anacreon (Apple TV+ Original Series Soundtrack) by Bear McCreary.mp3"}
	*)
	
	
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
		set AppleScript's text item delimiters to {" - "} -- declare new delimiters
		-- do script steps here
		
		set delimitedList to every text item of origTrackName
		
		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try
	
	delimitedList
end tell