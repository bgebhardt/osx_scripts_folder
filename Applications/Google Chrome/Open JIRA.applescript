-- Open a JIRA from clipboard
-- example: https://mileiq.atlassian.net/browse/INF-774

-- script that opens all JIRA identifiers in the text on the clipboard.
-- it assumes urls are newline separated.

-- Tip: use with an automator action that can grab the URLs
-- a service version of it can be found in the Scripts folder
-- under Automater and Services.

-- Configuration
set jiraBaseURL to "https://mileiq.atlassian.net/browse/"

tell application "Google Chrome"
	try
		-- check for a front window.  if not create one.
		if windows is {} then
			set this_doc to make new window
		end if
		
		set numParagraphs to (number of paragraphs of (the clipboard))
		
		repeat with n from 1 to numParagraphs
			set URLtoOpen to jiraBaseURL & (the clipboard) 
			my new_tab(URLtoOpen)
			--log paragraph n of (the clipboard)
		end repeat
	on error the error_message number the error_number
		«event panSdlog» the error_message given «class btns»:{"OK"}, «class dflt»:1
	end try
	
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