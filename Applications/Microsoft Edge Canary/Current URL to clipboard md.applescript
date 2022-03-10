-- get running browser name
set browserName to myGetBrowserName()

-- copy url to clipboard in markdown link format
-- [tite]("url")
-- I don't know how to do this without code duplication because I need to reference app terms like "tab"
if browserName is "Microsoft Edge Canary" then
	tell application "Microsoft Edge Canary"
		set URL_list to ""
		set i to active tab of window 1
		set mdURL to "[" & title of i & "](" & URL of i & ")"
		set URL_list to mdURL & return & URL_list
		
		set the clipboard to URL_list
		URL_list
	end tell
	
else if browserName is "Microsoft Edge" then
	tell application "Microsoft Edge"
		set URL_list to ""
		set i to active tab of window 1
		set mdURL to "[" & title of i & "](" & URL of i & ")"
		set URL_list to mdURL & return & URL_list
		
		set the clipboard to URL_list
		URL_list
		
	end tell
	
end if

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