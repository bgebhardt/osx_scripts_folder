(* 
Simple AppleScript when given an ablum will creaete a csv
of the ablum image file names and the keywords associated with them
*)

global albumName
set albumName to "2017 no movies"

tell application "Photos"
	-- count of media items of album "2017 no movies"

	set theAlbum to album albumName
	
	set firstPhoto to media item 1 of theAlbum
	
	set theProps to properties of firstPhoto
	
	--	log my getCSVProperties(firstPhoto)
	--date of (properties of firstPhoto)
	
	log my getCSVProperties(firstPhoto)
	
	set theCSV to ""
	
	repeat with i in (media items of theAlbum)
		set theCSV to theCSV & my getCSVProperties(i)
	end
	
	set the clipboard to theCSV
	
	return theCSV
	
end tell

on getCSVProperties(theMediaItem)
	tell application "Photos"
		set mediaProps to properties of theMediaItem
		
		set theKeywords to ""
		if keywords of mediaProps is not missing value then
			repeat with i in (keywords of mediaProps)
				set theKeywords to theKeywords & i & "|"
			end
		end
	
		return 	(filename of mediaProps) & ", " & theKeywords 
		--& "," & (date of mediaProps)
	end
end getCSVProperties
