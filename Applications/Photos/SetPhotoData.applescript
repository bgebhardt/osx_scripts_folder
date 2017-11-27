-- script to apply fields specified in a csv line to a photo.
-- Bryan Gebhardt, created 11-26-2017

--set theLine to "DSC06054.JPG, false, 1 star|"
--set theLines to "IMG_5397.JPG, false, 5 star|" & return & "IMG_5396.JPG, false, 5 star|"

set theLines to the clipboard

-- process all paragraphs
repeat with para in paragraphs of theLines
	set theRecord to my parsePhotoCSVLine(para)
	-- log "processing filename : " & theFilename of theRecord
	log (para)
	my applyPhotoProperties(theRecord)

end repeat

(*
-- process theLine
set theRecord to my parsePhotoCSVLine(theLine)
log (theFilename of theRecord)
theRecord
theFavorite of theRecord
return my applyPhotoProperties(theRecord)
*)

on applyPhotoProperties(theRecord)
	tell application "Photos"
		-- get the photo matching filename
		-- example: properties of item 1 of (every media item whose filename is "DSC06054.JPG")

		set thePhotos to (every media item whose filename is (theFilename of theRecord))

		-- change only the ones with 1 photo
		if count of thePhotos is 1 then
			set thePhoto to item 1 of (every media item whose filename is (theFilename of theRecord))
			log (get theRecord)
			log " ** setting keywords and favorite for " & theFilename of theRecord
			if theFavorite of theRecord is "false" then
				set favorite of thePhoto to false
			else
				set favorite of thePhoto to true
			end if

			-- append the keywords
			my setKeywords(thePhoto, theKeywords of theRecord, false)

			return properties of thePhoto
		else
			-- there could be more than one photo with the same name.  Which do we set?
			log " ** for filename " & (theFilename of theRecord) & ": " & count of thePhotos & " photos"

		end

		return {}

	end tell
end applyPhotoProperties


on returnNewestPhoto(thePhotos)
	tell application "Photos"
		--	set thePhoto to item 1 of (every media item whose filename is "DSC_0188.jpg")
		set newestPhoto to null
		repeat with thePhoto in thePhotos
			if newestPhoto is null then
				set newestPhoto to thePhoto
			else if (date of thePhoto) > (date of newestPhoto) then
				set newestPhoto to thePhoto
			end if
		end repeat

		set {year:y, month:m, day:d} to (date of thePhoto)
		log (y as integer)
		log (m as integer)

		if (y as integer) = 2017 then
			if (m as integer) = 8 then
				log ("** process me **")
			end if
		end if

		return thePhoto
	end tell
end

-- TODO: change export to export date/time and filename.
-- TODO: That's the only way to uniquely identify a photo.  Duh!
-- hack to process only 8-2017 photos.
-- won't work as there can be multiple 8-2017 photos.
on processPhoto(thePhoto)
	set {year:y, month:m, day:d} to (date of thePhoto)
	log (y as integer)
	log (m as integer)

	if (y as integer) = 2017 then
		if (m as integer) = 8 then
			log ("** process me **")
		end if
	end if

	return thePhoto
end

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

on setKeywords(theMediaItem, keywordsToApply, shouldReplace)
	tell application "Photos"
		set theseKeywords to the keywords of theMediaItem
		if theseKeywords is missing value then
			set keywords of theMediaItem to keywordsToApply
		else if keywordsToApply is {} then -- option for deleting all existing keywords
			if shouldReplace is true then
				set keywords of theMediaItem to {}
			end if
		else
			if shouldReplace is false then
				-- check to see if new keyword already exists
				set filteredKeywords to {}
				repeat with q from 1 to the count of keywordsToApply
					set thisKeyword to item q of keywordsToApply
					if thisKeyword is not in theseKeywords then
						set the end of the filteredKeywords to thisKeyword
					end if
				end repeat
				if filteredKeywords is not {} then
					-- append checked keywords to existing keywords
					set keywords of theMediaItem to (theseKeywords & filteredKeywords)
				end if
			else -- replace keywords with new ones
				set keywords of theMediaItem to keywordsToApply
			end if
		end
	end
end
