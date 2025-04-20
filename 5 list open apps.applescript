-- Get a list of all running applications

-- Properties of processes

-- background only (boolean, r/o) : Does the process run exclusively in the background?
-- displayed name (text, r/o) : the name of the file from which the process was launched, as displayed in the User Interface
-- name (text, r/o) : the name of the process
-- bundle identifier (text, r/o) : the bundle identifier of the process' application file
    -- can group by the first two components of the bundle identifier

-- frontmost (boolean) : Is the process the frontmost process
-- visible (boolean) : Is the process' layer visible?

-- accepts high level events (boolean, r/o) : Is the process high-level event aware (accepts open application, open document, print document, and quit)?
-- accepts remote events (boolean, r/o) : Does the process accept remote events?
-- architecture (text, r/o) : the architecture in which the process is running
-- Classic (boolean, r/o) : Is the process running in the Classic environment?
-- creator type (text, r/o) : the OSType of the creator of the process (the signature)
-- file (alias or file, r/o) : the file from which the process was launched
-- file type (text, r/o) : the OSType of the file type of the process
-- has scripting terminology (boolean, r/o) : Does the process have a scripting terminology, i.e., can it be scripted?
-- id (integer, r/o) : The unique identifier of the process
-- partition space used (integer, r/o) : the number of bytes currently used in the process' partition
-- short name (text or missing value, r/o) : the short name of the file from which the process was launched
-- total partition size (integer, r/o) : the size of the partition with which the process was launched
-- unix id (integer, r/o) : The Unix process identifier of a process running in the native environment, or -1 for a process running in the Classic environment

property processName : "name"

-- Add background applications to the markdown if desired
set showBackgroundApps to false

-- add bundle id to app name
set addBundleID to false

-- TODO: sort and group by bundle ID

tell application "System Events"
    set allProcesses to application processes
    set appList to {}
    set backgroundOnlyAppList to {}
    
    repeat with thisProcess in allProcesses
        try
            set appName to name of thisProcess
            set appBundleID to bundle identifier of thisProcess

            if addBundleID is true then
                set appName to appName & " (" & appBundleID & ")"
            end if

            -- Add to our list if not already there
            if background only of thisProcess is false then
				-- Add to our list if not already there
				if appName is not in appList then
					set end of appList to appName
				end if
            else 
                if appName is not in backgroundOnlyAppList then
                    set end of backgroundOnlyAppList to appName
                end if
            end if
        end try
    end repeat
end tell

-- Sort the list alphabetically
set appList to my sortList(appList)

-- Create markdown output
set markdownOutput to "# Currently Running Applications" & return & return
repeat with appName in appList
    set markdownOutput to markdownOutput & "- " & appName & return
end repeat


-- Sort the background app list alphabetically
set backgroundOnlyAppList to my sortList(backgroundOnlyAppList)

-- Add background applications to the markdown if enabled
if showBackgroundApps is true then
    log "adding background applications"
    set markdownOutput to markdownOutput & return & "# Background Applications" & return & return
    repeat with appName in backgroundOnlyAppList
        set markdownOutput to markdownOutput & "- " & appName & return
    end repeat
end if

-- Copy to clipboard
set the clipboard to markdownOutput

-- Return a confirmation message
return "Markdown list of running applications copied to clipboard!"

-- Helper function to sort the list alphabetically
on sortList(theList)
    set theIndexList to {}
    set theSortedList to {}
    repeat (length of theList) times
        set theLowItem to ""
        repeat with i from 1 to (length of theList)
            if i is not in theIndexList then
                set thisItem to item i of theList
                if theLowItem is "" then
                    set theLowItem to thisItem
                    set theLowIndex to i
                else if thisItem comes before theLowItem then
                    set theLowItem to thisItem
                    set theLowIndex to i
                end if
            end if
        end repeat
        set end of theSortedList to theLowItem
        set end of theIndexList to theLowIndex
    end repeat
    return theSortedList
end sortList