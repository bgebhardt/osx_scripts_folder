-- Template to easily detect running browser and target that browser. 
-- Uses code duplication unfortunately.

-- get running browser name
set browserName to myGetBrowserName()
-- set preferredBrowser to "Microsoft Edge" -- name of the broswer you want links opened in

-- I don't know how to do this without code duplication because I need to reference app terms like "tab"
if browserName is "Microsoft Edge Canary" then
	tell application "Microsoft Edge Canary"
		
		-- INSERT SCRIPT SPECIFIC CODE HERE
		
	end tell
	
else if browserName is "Microsoft Edge" then
	tell application "Microsoft Edge"

		-- INSERT SCRIPT SPECIFIC CODE HERE - DUPLICATED CODE
		
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
		-- doesn't work for some reason
		-- else if browserName is not preferredBrowser then 
		-- 	display dialog "Preferred browser " & preferredBrowser & " is not running. Cancel to stop script."
		else
			set browserName to item 1 of browserName
		end if
		
		browserName
	end tell
	
end myGetBrowserName