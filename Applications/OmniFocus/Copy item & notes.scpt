(*
Omnifocus script to copy task names and notes more easily.
It intelligently moves the date based on which is filled in.
-- (c) 2016 Bryan Gebhardt

Inspired by Dan Byler's script.  Also borrowed some of the code.

	# LICENSE #
	
	Copyright © 2011 Dan Byler (contact: dbyler@gmail.com)
	Licensed under MIT License (http://www.opensource.org/licenses/mit-license.php) 
	(TL;DR: do whatever you want with it.)
*)
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
		
		set the clipboard to ""
		-- loop through all items; no error checking!
		repeat with theItem in theTasksSelected
			set theOutput to "## " & name of theItem & return & return & note of theItem & return & "---" & return
			set the clipboard to the clipboard & return & theOutput
			
			log ("task name: " & name of theItem)
			log ("note: " & note of theItem)
			log (get theItem)
		end repeat
	end tell
	
end tell
