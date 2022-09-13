-- Quick and dirty script to correct main song meta data by pulling it from the song name
-- Song names encode info like artist, album, track title, etc.
-- need to check the format of the name each time

(*
TODOs
* Make work on multiple items in a thempty selection 
* parse out genre from name
*)

set invertTrackNumbers to 0 -- default to not invert the track numbers

-- change these for each album you're processing
(*
set theAlbum to "Foundation- Season 1 (Apple TV+ Original Series Soundtrack)"
set theArtist to "Bear McCreary"
set theTrackCount to 14
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 4
*)

(*
-- Tehran- Season 1 (Original Series Soundtrack) - 002 - Tehran- Season 1 - Thunder (Soundtrack)
set theAlbum to "Tehran- Season 1 (Original Series Soundtrack)"
set theArtist to "Mark Eliyahu"
set theTrackCount to 20
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 4
*)


(*
--Star Wars- The Bad Batch, Vol. 1 (Episodes 1-8) Soundtrack by Kevin Kiner, 001, Star Wars- The Bad Batch Vol. 1, Cid�s Jukebox Mix Vol. 1 (Soundtrack by Kevin Kiner)
-- track num 3, name 5
set theAlbum to "The Bad Batch, Vol. 1 (Episodes 1-8) Soundtrack"
set theArtist to "Kevin Kiner"
set theTrackCount to 37
set theGenre to "Soundtrack"
set theTrackNumPos to 3
set theTrackNamePos to 5
*)

(*
--Monsters at Work (Original Soundtrack) by Dominic Lewis - 001 - Monsters at Work Main Title (Toy Piano) - Monsters at Work Soundtrack (by Dominic Lewis)
-- track num 3, name 5
set theAlbum to "Monsters at Work (Original Soundtrack)"
set theArtist to "Dominic Lewis"
set theTrackCount to 18
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 4 -- but many of them are 3 or 4; argh; need proper regex to figure this one out 
*)

(*
-- No Time To Die (Original Motion Picture Soundtrack) by Hans Zimmer, 002, No Time To Die- # 21 No Time to Die – Billie Eilish
-- position 4 as track and track title
-- No Time To Die- # 21 No Time to Die
-- TODO: How to parse
set theAlbum to "No Time To Die (Original Motion Picture Soundtrack)"
set theArtist to "Hans Zimmer"
set theTrackCount to 22
set theGenre to "Soundtrack"
set theTrackNumPos to 2 -- these are all mixed up too
set theTrackNamePos to 3 -- includes extra stuff - title, track # 
*)


(*
--Dune (Original Motion Picture Soundtrack) by Hans Zimmer, 001, Dune – My Road Leads into the Desert (Soundtrack by Hans Zimmer)
set theAlbum to "Dune (Original Motion Picture Soundtrack)"
set theArtist to "Hans Zimmer"
set theTrackCount to 22
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 3 -- has extra album name
*)

(*
--Vangelis Blade Runner Soundtrack (29th Anniversary Limited Edition 2011), 001, Vangelis- Blade Runner Soundtrack [CD4], Tears In Rain [1994 Version]
set theAlbum to "Blade Runner Soundtrack (29th Anniversary Limited Edition 2011)"
set theArtist to "Vangelis"
set theTrackCount to 82
set theGenre to "Soundtrack"
set theTrackNumPos to 2 -- need to invert these via 82 - number or theTrackCount - theTrackNumPos; use invertTrackNumbers
set invertTrackNumbers to 1 
set theTrackNamePos to 4 
*)

(*
--The Lord of the Rings- The Rings of Power (Season 1- Amazon Original Series Soundtrack) by Bear McCreary, 002, Galadriel, The Lord of the Rings- The Rings of Power (Season 1- Soundtrack) by Bear McCrea…
set theAlbum to "The Lord of the Rings- The Rings of Power (Season 1- Amazon Original Series Soundtrack)"
set theArtist to "Bear McCreary"
set theTrackCount to 2
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 3
*)

(*
--For All Mankind- Season 3 (Apple TV+ Original Series Soundtrack) by Jeff Russo & Paul Doucette, 001,  For All Mankind- Season 3, Wreckage (Soundtrack by Jeff Russo & Paul Doucette) -
set theAlbum to "For All Mankind- Season 3 (Apple TV+ Original Series Soundtrack)"
set theArtist to "Jeff Russo & Paul Doucette"
set theTrackCount to 16
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 4 -- need to cut off last part of name with unpack song script
*)

(*
--Top Gun- Maverick (Music From The Motion Picture) by Harold Faltermeyer & Hans Zimmer & Lorne Balfe, 003, Top Gun- Maverick 💿 The Man, The Legend, Touchdown (Music From The Motion Picture) -
set theAlbum to "Top Gun- Maverick (Music From The Motion Picture)"
set theArtist to "Harold Faltermeyer & Hans Zimmer & Lorne Balfe"
set theTrackCount to 8
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 3 -- weird names to fix
*)

(*
--The Witcher- Season 2 (Soundtrack from the Netflix Original Series) by Joseph Trapanese, 007, The Witcher- Season 2 Soundtrack, Pain and Desperation (Music by Joseph Trapanese) -
set theAlbum to "The Witcher- Season 2 (Soundtrack from the Netflix Original Series)"
set theArtist to "Joseph Trapanese"
set theTrackCount to 32
set theGenre to "Soundtrack"
set theTrackNumPos to 2
set theTrackNamePos to 4 -- need to cut off last part of name with unpack song script
*)

tell application "Music"
	--name of current playlist
	--properties of current track
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
	set albumName to origTrackName
	set trackNum to (item theTrackNumPos of delimitedList as number)
	set trackName to item theTrackNamePos of delimitedList
	
	delimitedList
	
	display dialog (delimitedList as string) -- quick error check
	
	tell theTrack
		
		set comment to origTrackName -- backup the original name in the comments
		--set album to origTrackName
		set album to theAlbum
		set artist to theArtist
		set track number to trackNum
		-- hack to invert track count for some albums
		if invertTrackNumbers is 1
			set track number to (theTrackCount - trackNum +1)
		end
		set track count to theTrackCount
		set genre to theGenre
		set name to trackName
		
	end tell
	
end tell
