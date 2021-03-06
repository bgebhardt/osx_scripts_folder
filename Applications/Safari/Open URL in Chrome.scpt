-- Script to open the current Safari tab in Chrome
tell application "Safari"
	set i to current tab of window 1
	set theUrl to URL of i
	
	tell application "Google Chrome"
		try
			-- check for a front window.  if not create one.
			if windows is {} then
				set this_doc to make new window
			end if
		
			my new_tab(theURL)

		on error the error_message number the error_number
			«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
		end try
	
	end tell
		
end tell

-- new tab function
-- see http://laclefyoshi.blogspot.com/2010/10/google-chrome-ver.html
on new_tab(theURL)
	tell application "Google Chrome"
		set aWin to window 1
		tell aWin
			--		set newTab to make new tab with properties {URL:"http://www.facebook.com/"}
			set newTab to make new tab with properties {URL:theURL}
		end tell
	end tell
	
end new_tab