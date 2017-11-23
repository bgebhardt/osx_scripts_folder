-- Script taken from this excellent site on automating photos
-- https://photosautomation.com/scripting/index.html
-- Script is written using AppleScriptObj-C, so load Cocoa Foundatation framework
use framework "Foundation"
use scripting additions

property keyWordString : "" -- his property will remember last entry

tell application "Photos"
	set currentSelection to the selection
	if currentSelection is {} then error number -28

	set dialogMessage to "Enter a comma-delimited list of keywords to apply to the selected media items:"
	display dialog dialogMessage default answer keyWordString with icon 1 buttons {"Cancel", "Replace", "Append"} default button 3
	copy the result to {button returned:buttonPressed, text returned:keyWordString}

	-- convert the comma-delimited string into a list of strings
	set AppleScript's text item delimiters to ","
	set keywordsToApply to every text item of keyWordString
	set AppleScript's text item delimiters to ","

	-- trim any white space around the strings
	set whiteSpaceSet to current application's NSCharacterSet's whitespaceAndNewlineCharacterSet()
	repeat with i from 1 to the count of keywordsToApply
		set thisWord to item i of keywordsToApply
		set CocoaString to (current application's NSString's stringWithString:thisWord)
		set trimmedKeyword to (CocoaString's stringByTrimmingCharactersInSet:whiteSpaceSet) as string
		set item i of keywordsToApply to trimmedKeyword
	end repeat

	-- process each selected photo
	repeat with i from 1 to the count of currentSelection
		set thisItem to item i of currentSelection
		-- get the current keywords of the photo
		set theseKeywords to the keywords of thisItem
		if theseKeywords is missing value then
			set keywords of thisItem to keywordsToApply
		else if keywordsToApply is {} then -- option for deleting all existing keywords
			if buttonPressed is "Replace" then
				set keywords of thisItem to {}
			end if
		else
			if buttonPressed is "Append" then
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
					set keywords of thisItem to (theseKeywords & filteredKeywords)
				end if
			else -- replace keywords with new ones
				set keywords of thisItem to keywordsToApply
			end if
		end if
	end repeat
end tell
