-- Applescript to set to a Reference item (an iteam I want to keep with no due date for reference)
tell application "OmniFocus"
	tell content of first document window of front document
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
		
		-- loop through all items; no error checking!
		repeat with theItem in theTasksSelected
			log ("task name: " & name of theItem)
			log (get theItem)
			my setToReference(theItem)
		end repeat
	end tell
	
	-- for debugging
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	-- my setDate(theTask)
end tell

-- set an iteam to reference context with no due date
on setToReference(theTask)
	tell application "OmniFocus"
		set tag of theTask to (my getContext("Reference"))
		set due date of theTask to missing value -- clear due date
	end tell
end setToReference

-- get context based on a string namne
on getContext(contextName)
	tell application "OmniFocus"
		tell front document
			set theContext to first flattened tag where its name = contextName
			--	set theProject to first flattened project where its name = "Finance" -- example for projects
			
		end tell
	end tell
end getContext