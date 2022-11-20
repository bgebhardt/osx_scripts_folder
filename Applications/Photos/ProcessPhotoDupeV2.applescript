tell application "Photos"
	set dupKeywords to {"Duplicate?"}
	set sel to selection
	
	-- for each photo in selection
	repeat with img in sel
		--log (get filename of img)
		set theFileName to filename of img
		-- confirm HEIC
		if (theFileName) does not contain "HEIC" then
			log "skipping photo " & theFileName
		else
			-- check for duplicate JPG photo
			
			-- idea is to search for the filename stem and if 2 exist delete the jpg version
			-- TODO: fix hack of chars 1 thu 8 to properly finding the stem
			set fileStem to (characters 1 through 8 of theFileName as string)
			
			-- 2. search for all similar photos
			set results to (search for fileStem)
			
			
			if (count of results) is 1 then
				-- remove Duplicate keyword
				log ("single: removing keyword from single photo " & theFileName)
				my RemoveDupeKeyword(img)
				
			else if (count of results) is 2 then
				-- add Duplicate to JPG file
				-- remove the duplicate from HEIC file
				log "count is 2 for " & fileStem
				
				-- hacky: assumes the 2 items are a JPG, HEIC pair
				-- not always true as sometimes filenames are the same and both are HEIC	
				-- BUG!!! Could add a dupe to a JPG that's a completely diff picture; check the times to minimize this chance
				
				-- check photos are within 3 seconds
				set timeDiff to (my CompareDateWithinXSeconds(date of item 1 of results, date of item 2 of results, 3))
				log "time diff: " & timeDiff
				if timeDiff = 0 then
					my OnlyJPGAreDupes(item 1 of results)
					my OnlyJPGAreDupes(item 2 of results)
				else
					log "photos times don't match!"
				end if
				
			else
				-- too many found; do nothing
				log "Too man found! Count is " & (count of results) & " for " & fileStem
			end if
		end if
		
	end repeat
	
end tell


on OnlyJPGAreDupes(img)
	tell application "Photos"
		if (filename of img) contains "JPG" then
			log ("   adding keyword to photo " & filename of img)
			my AddKeyword(img, "Duplicate?")
		end if
		if (filename of img) contains "HEIC" then
			log ("   removing keyword from photo " & filename of img)
			my RemoveDupeKeyword(img)
		end if
	end tell
end OnlyJPGAreDupes

on RemoveDupeKeyword(img)
	set keyWordToRemove to "Duplicate?"
	--	set keyWordToRemove to "4 Star"
	tell application "Photos"
		set theKeywords to keywords of img
		
		set theNewKeywords to {}
		if theKeywords is not missing value then
			repeat with k in theKeywords
				--log (get k)
				if (k as string) is not keyWordToRemove then
					set theNewKeywords to theNewKeywords & k
					--log (get theNewKeywords)
				else
					--log "here"
				end if
			end repeat
			set keywords of img to theNewKeywords
			return theNewKeywords
		end if
	end tell
end RemoveDupeKeyword


on AddKeyword(theImg, theKeyword)
	tell application "Photos"
		set theKeywords to keywords of theImg
		if theKeywords is not missing value then
			set keywords of theImg to theKeywords & theKeyword
		else
			set keywords of theImg to theKeyword
		end if
	end tell
end AddKeyword

on CompareDateWithinXSeconds(di1, di2, numSeconds)
	if di1 > di2 then
		set diff to di1 - di2
	else
		set diff to di2 - di1
	end if
	
	if diff < numSeconds then
		return 0
	else
		return diff
	end if
end CompareDateWithinXSeconds