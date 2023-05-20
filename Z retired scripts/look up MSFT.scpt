# Open a people search in WhoPlus 
# URL example format https://whoplus.microsoft.com/Search?searchText=john&searchType=people

# Get search test from the clipboard
set theSearch to (the clipboard)
set theURL to "https://whoplus.microsoft.com/Search?searchText=" & theSearch & "&searchType=people"

-- get running browser name
set browserName to myGetBrowserName()

-- I don't know how to do this without code duplication because I need to reference app terms like "tab"
if browserName is "Microsoft Edge Canary" then
	tell application "Microsoft Edge Canary"
		
		try
			-- check for a front window.  if not create one.
			if windows is {} then
				set this_doc to make new window
			end if

			-- new tab function
			-- see http://laclefyoshi.blogspot.com/2010/10/google-chrome-ver.html
			set aWin to window 1
			tell aWin
				--		set newTab to make new tab with properties {URL:"http://www.facebook.com/"}
				set newTab to make new tab with properties {URL:theURL}
			end tell
			
		on error the error_message number the error_number
			«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
		end try
		
	end tell
	
else if browserName is "Microsoft Edge" then
	tell application "Microsoft Edge"

		try
			-- check for a front window.  if not create one.
			if windows is {} then
				set this_doc to make new window
			end if

			set aWin to window 1
			tell aWin
				--		set newTab to make new tab with properties {URL:"http://www.facebook.com/"}
				set newTab to make new tab with properties {URL:theURL}
			end tell
			
		on error the error_message number the error_number
			«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
		end try
		
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