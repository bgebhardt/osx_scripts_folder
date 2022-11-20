-- quick and dirty script to identify the right duplicates
-- have a lot of duplicate JPG and HEIC photos with nearly the same file name.
-- example: "IMG_4431D.JPG" and "IMG_4431.HEIC"

tell application "Photos"
	
	-- 1. get the filename stem of the selected photo
	set sel to selection
	--media item whoose name is "IMG_4149.HEIC"
	properties of item 1 of sel
	
	--	media item filename is "IMG_4149.HEIC"
	set selFileName to filename of item 1 of sel
	
	-- idea is to search for the filename stem and if 2 exist delete the jpg version
	
	set fileStem to (characters 1 through 8 of selFileName) as string
	
	-- 2. search for all similar photos
	set results to (search for fileStem)
	
	if (count of results) is not 2 then
		display dialog "Didn't get 2 results. Got " & (count of results) & " results"
		if (filename of item 1 of results) contains "HEIC" then
			set keywords of item 1 of results to {}
		end if
		return
	end if
	
	
	-- TODO: check that results are only 2 photos
	
	--	set file1 to filename of item 1 of results
	--	set file2 to filename of item 2 of results
	
	if (filename of item 1 of results) contains "HEIC" then
		set HEICfile to item 1 of results
		set JPGfile to item 2 of results
	else
		set HEICfile to item 2 of results
		set JPGfile to item 1 of results
	end if
	
	properties of HEICfile
	keywords of HEICfile
	
	
	-- make sure only one keyword
	-- TODO check for keywords and just remove and add Duplicate?
	if (count of keywords of HEICfile) is not 1 then
		display dialog "ERROR: More than 1 keyword"
		return
	end if
	
	set dupKeywords to {"Duplicate?"}
	
	-- 3. set duplicate keyword on JPG version
	set keywords of JPGfile to dupKeywords
	
	-- 4. remove duplicate keyword on HEIC version
	set keywords of HEICfile to {}
	
	--filename of HEICfile
	--filename of JPGfile	
	
end tell
