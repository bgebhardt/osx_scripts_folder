(* AppleScript to set Sony cybershot movie video clips based on creation date of MTS files on SD Card.

Unfortunately the video clips aren't named the same as the card so will have to map image names to clips.

Will do this (in a hacky way) via a selection of clips and in the script putting the starting index of the video in the script.

TODO:
* Add error handling

*)

set sdcardPath to ":Volumes:NO NAME:PRIVATE:AVCHD:BDMV:STREAM"

tell application "Photos"
	-- set a to item 1 of (get selection)
	-- properties of a
	
	-- for each clip in selection -- selection doesn't work as clips aren't in order. instead will do by names.
	set clipList to (get selection)
	
	log clipList
	
	-- find the lowest number
	set lowestClipNum to 999
	repeat with clip in clipList
		set clipName to filename of clip
		
		set clipNum to (my getClipNumber(clipName))
		
		log lowestClipNum & " <? " & clipNum
		
		if clipNum < lowestClipNum then
			set lowestClipNum to clipNum
		end if
	end repeat
	
	set startingPhotosClip to lowestClipNum
	-- TODO: seems to be one less than name in photos; this is fragile; make sure to check this
	set startingMTSClip to startingPhotosClip - 1
	
	log startingPhotosClip & "; " & startingMTSClip
	
	repeat with clip in clipList
		
		set clipName to filename of clip
		
		-- find number in the filename
		-- TODO: make this more robust; assumes form of Clip #273.mov
		set clipNum to (my getClipNumber(clipName))
		
		-- get corresponding MTS number
		set MTSNum to (clipNum) + startingMTSClip - startingPhotosClip
		log (get filename of clip)
		log "clipNum = " & clipNum & "; MTSNum = " & MTSNum
		
		-- construct file path
		if MTSNum < 10 then
			set MTSPath to sdcardPath & ":0000" & MTSNum & ".MTS"
		else if MTSNum < 100 then
			set MTSPath to sdcardPath & ":000" & MTSNum & ".MTS"
		else
			set MTSPath to sdcardPath & ":00" & MTSNum & ".MTS"
		end if
		log MTSPath
		
		-- get and set the date	
		set changeDate to creation date of (info for file MTSPath)
		log changeDate
		
		set date of clip to changeDate
		
	end repeat
	
	--set a to item 1 of (get selection)
	--properties of a -- ZScxYkaiSP286RQMDbwxkQ
	--get every media item whose filename is "Clip #256.mov" -- this line is very slow; instead doing filename manipulation
end tell


on getClipNumber(clipName)
	-- depending on length figure out the number
	if length of clipName is 11 then
		set clipNum to ((character 7 of clipName) as string) as number
	else if length of clipName is 12 then
		set clipNum to ((characters 7 through 8 of clipName) as string) as number
	else if length of clipName is 13 then
		set clipNum to ((characters 7 through 9 of clipName) as string) as number
	end if
	
	return clipNum
	
end getClipNumber