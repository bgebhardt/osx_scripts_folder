(*
Script to set the context to Wait For

inspired and helped by the follwoing posts:
* http://forums.omnigroup.com/showthread.php?t=29790
* https://discourse.omnigroup.com/t/creating-a-new-note-in-a-specific-sub-context/5874
* http://marc-abramowitz.com/archives/2012/09/12/an-unnecessary-applescript-to-convert-an-omnifocus-task-into-a-project/
* [Create OmniFocus Tasks with AppleScript — MacSparky](http://macsparky.com/blog/2012/8/applescript-omnifocus-tasks)
* [Omnifocus/applescript issue when setting context - The Omni Group Forums](http://forums.omnigroup.com/showthread.php?t=24825)

*)

-- TODO: remove process task; refactor other scripts to use getSelectedTasks(); move to JavaScript

property theContextName : "Wait for" -- the context to set the task to

tell application "OmniFocus"

	tell default document
		set theContext to first flattened tag where its name = theContextName --and the name of its container = "Store"
	end tell

	set theTasksSelected to my getSelectedTasks()
	
	-- loop through all items; no error checking!
	repeat with theItem in theTasksSelected
		my processTask(theItem, theContext)
	end repeat
	-- for debugging
	-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
	-- my setDate(theTask)
end tell


on processTask(theTask, theContext)
	using terms from application "OmniFocus"
		log ("task name: " & name of theTask)
		log (get theTask)
		
		log (name of tag of theTask)
		
		set tag of theTask to theContext		
		
	end
end processTask


on getSelectedTasks()
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
			
			return theTasksSelected
		end tell
	end
end