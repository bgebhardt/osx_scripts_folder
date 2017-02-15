-- Open a JIRA from clipboard
-- example: https://mileiq.atlassian.net/browse/INF-774

-- script that opens all urls in the text on the clipboard.
-- it assumes urls are newline separated.

-- Tip: use with an automator action that can grab the URLs
-- a service version of it can be found in the Scripts folder
-- under Automater and Services.
tell application "Safari"
	try
		-- check for a front window.  if not create one.
		if documents is {} then
			set this_doc to make new document at the beginning of documents
		end if
		
		set numParagraphs to (number of paragraphs of (the clipboard))
		
		repeat with n from 1 to numParagraphs
			my new_tab()
			set URLtoOpen to "https://mileiq.atlassian.net/browse/" & (the clipboard) 
			set the URL of the document 1 to paragraph n of URLtoOpen
			--log paragraph n of (the clipboard)
		end repeat
	on error the error_message number the error_number
		«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
	end try
	
end tell

on new_tab()
	tell application "Safari" to activate
	tell application "System Events"
		tell process "Safari"
			click menu item "New Tab" of menu "File" of menu bar 1
		end tell
	end tell
end new_tab