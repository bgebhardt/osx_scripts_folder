-- script to apply fields specified in a csv line to a photo.
set theLine to "DSC06054.JPG, false, 1 star|"

item 1 of theLine

set theRecord to my parsePhotoCSVLine(theLine)

log (theFilename of theRecord)
theRecord
theFavorite of theRecord
return my applyPhotoSettings(theRecord)

on applyPhotoSettings(theRecord)
	tell application "Photos"
		-- get the photo matching filename
		-- example: properties of item 1 of (every media item whose filename is "DSC06054.JPG")
		log (theFilename of theRecord)
		set thePhoto to item 1 of (every media item whose filename is (theFilename of theRecord))

		log (theFavorite of theRecord)
		log (theKeywords of theRecord)
		log (properties of thePhoto)
		log (theFavorite of theRecord = "false")
		log (get theRecord)
		if theFavorite of theRecord is "false" then
			set favorite of thePhoto to false
		else
			set favorite of thePhoto to true
		end if
		set keywords of thePhoto to theKeywords of theRecord

		log (properties of thePhoto)
		return properties of thePhoto

	end tell
end applyPhotoSettings


on parsePhotoCSVLine(theLine)

	set theRecord to {theFilename:null, theFavorite:null, theKeywords:null}

	try
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {", "} -- declare new delimiters
		-- do script steps here

		set theFilename of theRecord to (text item 1 of theLine)
		set theFavorite of theRecord to (text item 2 of theLine)
		set theKeywords of theRecord to my parseKeyWords(text item 3 of theLine)

		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try

	return theRecord
end parsePhotoCSVLine

--parseKeyWords("1 star|Vacation")
-- TODO: remove empty keyword. 1 star| --> {" 1 star", ""}
on parseKeyWords(theKeywords)

	try
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {"|"} -- declare new delimiters

		return every text item of theKeywords

		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try

end parseKeyWords
