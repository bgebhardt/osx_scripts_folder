-- Misc scripts to clean up song titles, etc.
-- cuts front and last characters from a track name

tell application "Music"
	--name of current playlist
	--properties of current track
	--name of current track
	
	if length of (get selection) is not 1 then
		display dialog "select only 1 song."
		return
	end if
	
	set theTrack to item 1 of selection -- get the first track
	-- "Dune – My Road Leads into the Desert (Soundtrack by Hans Zimmer)"
	-- 46 Wreckage (Soundtrack by Jeff Russo & Paul Doucette) -
	-- 30 You Belong With Us (Music by Joseph Trapanese) -

	
	set str to name of theTrack
	set str to my trimFrontChars(str, 0)
	set str to my trimLastChars(str, 31)
	
	str
	
	set name of theTrack to str
	
	(*
	tell theTrack
		
		set comment to origTrackName -- backup the original name in the comments
		--set album to origTrackName
		set album to theAlbum
		set artist to theArtist
		set track number to trackNum
		set track count to theTrackCount
		set genre to theGenre
		set name to trackName
		
	end tell
	*)
	
	-- Album, cut front, cut last
	-- Dune, 8, 29
	-- Foundation, 0, 54
	-- Foundation End Credits (Apple TV+ Original Series Soundtrack) Bear McCreary
    -- Tehran - Season 1, 0, 13
    -- Bad Batch, 0, 28
    -- Cid_s Jukebox Mix Vol. 1 (Soundtrack by Kevin Kiner)
	
end tell

on trimFrontChars(theStr, numChars)
	if numChars is greater than 0 then
		return characters numChars thru -1 of theStr as string
	else
		return theStr
	end if
end trimFrontChars


on trimLastChars(theStr, numChars)
	if numChars is greater than 0 then
		return characters 1 thru -numChars of theStr as string
	else
		return theStr
	end if
end trimLastChars