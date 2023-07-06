-- Template to easily detect running browser and target that browser. 
-- Uses code duplication unfortunately.

-- get running browser name
set browserName to myGetBrowserName()

-- copy urls to clipboard in markdown link format
-- [tite]("url")
-- I don't know how to do this without code duplication because I need to reference app terms like "tab"
-- in theory I can magically select the right version but this script doesn’t work when one of the browser apps isn't installed.
-- As I don't install Beta Edge now I'm commenting this out.
if browserName is "Microsoft Edge Beta" then
	display dialog "Uncomment Microsoft Edge Beta in script to get this working now."
	
	(*
	tell application "Microsoft Edge Beta"
		
		set URL_list to ""
		repeat with i in (every tab of window 1)
			set mdURL to "- [" & title of i & "](" & URL of i & ")"
			set URL_list to mdURL & return & URL_list
		end repeat
		
		set the clipboard to URL_list
		URL_list
		
		beep 2
		
	end tell
	*)
	
else if browserName is "Microsoft Edge" then
	tell application "Microsoft Edge"

		set URL_list to ""
		repeat with i in (every tab of window 1)
			set mdURL to "- [" & title of i & "](" & URL of i & ")"
			set URL_list to mdURL & return & URL_list
		end repeat
		
		set the clipboard to URL_list
		URL_list
		
		beep 2
		
	end tell
	
end if

-- used this to get the running version of edge when using beta, dev or production
on myGetBrowserName()
	tell application "System Events"
		-- name of every process where name is like Microsoft Edge
		set browserName to (name of every process where name contains "Microsoft Edge")
		
		if browserName is {} then
			-- if browser note running then exit
			display dialog "Microsoft Edge is not running. Cancel to stop script."
			-- or we could set it to a name
			set browserName to "Microsoft Edge" -- browser to run if not running
		else
			set browserName to item 1 of browserName
		end if
		
		browserName
	end tell
	
end myGetBrowserName