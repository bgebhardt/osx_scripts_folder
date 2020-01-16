tell application "Microsoft Edge"
	try
		-- check for a front window.  if not create one.
		if windows is {} then
			set this_doc to make new window
		end if
		
		set numParagraphs to (number of paragraphs of (the clipboard))
		
		repeat with n from 1 to numParagraphs
			set the theURL to paragraph n of (the clipboard)
			my new_tab(theURL)
			--			set the URL of active tab of window 1 to paragraph n of (the clipboard)
			--log paragraph n of (the clipboard)
		end repeat
	on error the error_message number the error_number
		«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
	end try
	
end tell

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