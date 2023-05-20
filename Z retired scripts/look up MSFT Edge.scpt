# Open a people search in WhoPlus 
# URL example format https://whoplus.microsoft.com/Search?searchText=john&searchType=people

# Get search test from the clipboard
set theSearch to (the clipboard)
set theURL to "https://whoplus.microsoft.com/Search?searchText=" & theSearch & "&searchType=people"

tell application "Microsoft Edge"
	try
		-- check for a front window.  if not create one.
		if windows is {} then
			set this_doc to make new window
		end if
		
		my new_tab(theURL)
	on error the error_message number the error_number
		«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
	end try
end

-- new tab function
-- see http://laclefyoshi.blogspot.com/2010/10/google-chrome-ver.html
on new_tab(theURL)
	tell application "Microsoft Edge"
		set aWin to window 1
		tell aWin
			--		set newTab to make new tab with properties {URL:"http://www.facebook.com/"}
			set newTab to make new tab with properties {URL:theURL}
		end tell
	end tell
	
end new_tab