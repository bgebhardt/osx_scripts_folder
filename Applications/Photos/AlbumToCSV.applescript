(* 
Simple AppleScript when given an ablum will creaete a csv
of the ablum image file names and the keywords associated with them
*)

global albumName
set albumName to "2017 rating 5"

tell application "Photos"
	set theAlbum to album albumName
	-- count of media items of theAlbum
	
	set firstPhoto to media item 1 of theAlbum
	
	set theProps to properties of firstPhoto
	
	--	log my getCSVProperties(firstPhoto)
	--date of (properties of firstPhoto)
	
	set theCSV to ""
	
	repeat with i in (media items of theAlbum)
	 	set theCSV to theCSV & return & my getCSVProperties(i)
	end
	
	-- just do first photo for testing
	--set theCSV to my getCSVProperties(firstPhoto)

	
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
	
		return 	(filename of mediaProps) & ", " & (favorite of mediaProps) & ", " & theKeywords 
		--& "," & (date of mediaProps)
	end
end getCSVProperties
