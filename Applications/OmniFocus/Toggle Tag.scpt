-- Script to toggle a specific tag on a set of OmniFocus items.

-- helpful links around interacting with tags
-- https://discourse.omnigroup.com/t/omnifocus-3-applescript-guide/41915/8
-- https://github.com/jsit/omnifocus-3-applescript-guide
-- [Rahlir/OmniFocusScripts: Collection of useful omnifocus applescripts](https://github.com/Rahlir/OmniFocusScripts)
-- [Omnifocus 3 macOS order tags script - OmniFocus / OmniFocus Automation - The Omni Group Forums](https://discourse.omnigroup.com/t/omnifocus-3-macos-order-tags-script/41821)
-- [jsit/omnifocus-3-applescript-guide: OmniFocus 3 AppleScript Guide](https://github.com/jsit/omnifocus-3-applescript-guide)
-- [OmniFocus 3 - Script to remove "Today" tag and mark complete - OmniFocus / OmniFocus Automation - The Omni Group Forums](https://discourse.omnigroup.com/t/omnifocus-3-script-to-remove-today-tag-and-mark-complete/42541)
-- Links for creating a tag if it doesn't exist
-- [OmniFocus automate adding tags to existing tasks - macOS a/ AppleScript - Automators Talk](https://talk.automators.fm/t/omnifocus-automate-adding-tags-to-existing-tasks/2774)
-- [Add tags to task with AppleScript? : omnifocus](https://www.reddit.com/r/omnifocus/comments/9ksw15/add_tags_to_task_with_applescript/)

-- Configure this list to the names of your tags you want to pick from
-- If you create a list of one tag it won't bring up the picker.
set gTagList to {"Wait For","Today", "Tomorrow", "This week","Someday","This month","Weekend"}

-- TODO
-- in pick list display which tags are already "on"

tell application "OmniFocus"
	-- get a reference to the tag to toggle.  Change the name of the tag to what you'd like to toggle
	-- to get all tags (for reference)	
	--	flattened tags of front document
	
	tell content of first document window of front document
		
		-- 1 Get the tasks
		
		--Get selection
		-- assumes one selection
		set theSel to (selected trees where class of its value is not item and class of its value is not folder)
		-- need to create a list of tasks before changing dates as that changes what the trees point to
		set theTasksSelected to {}
		-- loop through all items; no error checking!
		repeat with theItem in theSel
			set the end of theTasksSelected to value of theItem
		end repeat
		
		log "list of tasks: "
		log (get theTasksSelected)
		
		
		-- 2 Build the pick list
		
		copy gTagList to tagDisplayList -- need to do a deep copy here
		log ("tagDisplayList" & (get tagDisplayList))
		log (get "gTagList" & gTagList)
		
		-- loop through all items and toggle the tag; no error checking as I'm lazy!
		repeat with theTask in theTasksSelected
			log ("task name: " & name of theTask)
			my updateTagDisplayList(tagDisplayList, theTask)
		end repeat
		
		-- Ask for what to toggle
		set tagsNames to my pickTagsFromList(tagDisplayList)
		if tagsNames is missing value -- if the user cancel the pick list
			return
		end
		--set tagsNames to my pickTagsFromList(gTagList) -- switch to this line to go back to no annotations on the tags picked.
		-- it exits on missing or bad tag
		
		set tagsNames to my stripMarkFromTagList(tagsNames)
		
		log (get tagsNames)
		
		set tagsToToggle to my getTagsFromTagNames(tagsNames)
		
		-- 3 Toggle the tags
		
		-- loop through all items and toggle the tag; no error checking as I'm lazy!
		repeat with theTask in theTasksSelected
			log ("task name: " & name of theTask)
			log (get theTask)
			--properties of theTask
			set TheTags to tags of theTask
			
			my toggleMultipleTags(theTask, tagsToToggle)
		end repeat
	end tell
end tell

on toggleMultipleTags(theTask, TheTags)
	repeat with theTag in TheTags
		my toggleTag(theTask, theTag)
	end repeat
end toggleMultipleTags

on toggleTag(theTask, theTag)
	tell application "OmniFocus"
		repeat with theItem in tags of theTask
			if (id of theItem) = (id of theTag) then
				remove theTag from tags of theTask
				return
			end if
		end repeat
		
		--if we don't find it in the loop then add it
		add theTag to tags of theTask
	end tell
end toggleTag

-- returns one tag. On an error or canceling the pick list it returns missing value.
on pickOneTagFromList()
	global gTagList
	set tagList to gTagList
	
	-- to test one tag
	-- set tagList to {"Today"}
	
	-- to test a bad tag
	-- set tagList to {"Bad Tag", "Today", "This week", "This month"}
	
	-- will prompt if there is more than one tag	
	if length of tagList is greater than 1 then
		set dialogResult to (choose from list tagList with prompt "Pick a tag to toggle" with title "Toggle Omnifocus Tag")
		if dialogResult is false then
			return missing value
		end if
		set tagName to item 1 of dialogResult
	else
		set tagName to item 1 of tagList
	end if
	
	-- we don't catch the error as we want to stop the whole script if a tag doesn't exist
	my getTag(tagName)
end pickOneTagFromList

-- returns a list of tags which may include missing values. On an error or canceling the pick list it returns missing value.
-- you can pass in a modified display version of the tag list
-- TODO: make this optional to pass in
on pickTagsFromList(tagDisplayList)
	global gTagList
	set tagList to gTagList
	
	-- to test one tag
	-- set tagList to {"Today"}
	
	-- to test a bad tag
	--set tagList to {"Bad Tag", "Today", "This week", "This month"}
	
	-- will prompt if there is more than one tag	
	if length of tagList is greater than 1 then
		set dialogResult to (choose from list tagDisplayList with prompt "Pick one or more tags to toggle" with title "Toggle Omnifocus Tag" with multiple selections allowed)
		if dialogResult is false then
			return missing value
		end if
		set tagNames to dialogResult
		
	else
		set tagNames to tagList
	end if
	
end pickTagsFromList

on getTagsFromTagNames(tagNames)
	set TheTags to {}
	-- we don't catch the error as we want to stop the whole script if a tag doesn't exist
	repeat with theTagName in tagNames
		set TheTags to TheTags & {(my getTag(theTagName))}
	end repeat
	return TheTags
end getTagsFromTagNames

-- return tag based on a tag name.  If tag doesn't exist it throws an error.
on getTag(theTagName)
	tell application "OmniFocus"
		try
			set theTag to the first flattened tag of front document where its name = theTagName
			name of theTag
			return theTag
		on error
			set msg to (theTagName & " is not a tag in your Omnifocus document. Please fix the script configuration.")
			display dialog msg
			error msg
			--return missing value
		end try
	end tell
end getTag

-- function that given a list of tags looks for those tags in given task.
-- Each tag that matches is marked with a bullet at the end
-- This allows an easy way to display which tags are already on a task.
-- TODO: need to make this an array of arrays and flatten it in the dialog list; the hack will be to use the same array position
on updateTagDisplayList(tagDisplayList, theTask)
	global gTagList
	tell application "OmniFocus"
		
		repeat with theTag in (tags of theTask)
			repeat with theDisplayTagId from 1 to (length of tagDisplayList)
				set theDisplayTag to item theDisplayTagId of tagDisplayList
				set theActualTag to item theDisplayTagId of gTagList
				
				log (get theActualTag) & " : " & (get name of theTag)
				if ((name of theTag as text) = (theActualTag as text)) then
					if (last character of (item theDisplayTagId of tagDisplayList)) is not " •" then -- if the tag doesn't already have a mark then add one
						set (item theDisplayTagId of tagDisplayList) to (item theDisplayTagId of tagDisplayList) & " •"
						-- this is a reference; need to change the item in the list
					end if
				end if
			end repeat
		end repeat
	end tell
end updateTagDisplayList

-- Strip the trailing marker from a tag list
-- This is quite a fragile, hacky design.  May rework it later.
on stripMarkFromTagList(tagNamesList)
	
	set newTagList to {}
	repeat with tagName in (tagNamesList)
		if (last character of tagName) is "•" then
			set the end of newTagList to ((characters 1 through -3 of tagName) as text)
		else
			set the end of newTagList to tagName
		end if
		
	end repeat
	
	return newTagList
end stripMarkFromTagList