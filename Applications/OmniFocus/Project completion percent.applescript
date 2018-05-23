(*
This script tallies a percentage completion on all projects in rightmost panel window
https://discourse.omnigroup.com/t/any-of2-scripts-to-count-tasks-and-projects/9794/3
*)

property pTitle : "Completion Status" -- title of dialog box
property pLine : "-> " -- starting string for a line
property pEmpty : "-0-" -- three character string for empty projects

tell application id "OFOC"
	tell front document window of default document
		set its perspective name to "Projects"
		-- collect all content in sidebar
		
		repeat with oPanel in {content, sidebar}
			set lstProj to (value of every tree of oPanel where (class of its value is project and status of its value is active))
			set lngProj to length of lstProj
			if lngProj > 0 then exit repeat
		end repeat
		if lngProj < 1 then return
		
		-- generate the completion status list
		
		set str to ""
		
		-- loop through all projects
		
		repeat with oProj in lstProj
			tell oProj
				set strn to " : " & its name
				set lngDone to 0
				-- flatten the task list of the project
				set lstTasks to the (flattened tasks of oProj as list)
				set lngTasks to number of items in lstTasks
				if lngTasks > 0 then
					-- we have tasks in the project
					-- count the completed number of tasks
					repeat with oTask in lstTasks
						if oTask is completed then
							set lngDone to lngDone + 1
						end if
					end repeat
					-- generate the percentage complete
					set pcTask to (((lngDone / lngTasks) * 100) as integer)
					if (pcTask < 10) then
						set strp to pLine & "  " & (pcTask as string) & "%" & tab
					else if (pcTask < 100) then
						set strp to pLine & " " & (pcTask as string) & "%" & tab
					else
						set strp to pLine & (pcTask as string) & "%" & tab
					end if
				else
					-- we have no tasks in the project
					set strp to pLine & pEmpty & tab
				end if
			end tell
			set str to str & strp & strn & return
		end repeat
		display dialog str buttons {"OK"} default button "OK" with title pTitle
	end tell
end tell
