-- script that opens all urls in the text on the clipboard.
-- it assumes urls are newline separated.

-- Tip: use with an automator action that can grab the URLs
-- a service version of it can be found in the Scripts folder
-- under Automater and Services.

tell application "Safari"
	try
		set urls to (the clipboard)
		--		log urls
		set urls to my extract_urls()
		--		log urls
		
		-- check for a front window.  if not create one.
		if documents is {} then
			set this_doc to make new document at the beginning of documents
		end if
		
		set numParagraphs to (number of paragraphs of urls)
		
		repeat with n from 1 to numParagraphs
			my new_tab()
			log "** here"
			log paragraph n of urls
			set the URL of the document 1 to paragraph n of urls
			--log paragraph n of (the clipboard)
		end repeat
	on error the error_message number the error_number
		display dialog error_message with icon stop
	end try
	
end tell

-- TODO: This is broken and needs to be fixed. 07-03-2017
-- assumes urls are on the clipboard
-- example url: "* [Create Your Ultra Premium Mac Bundle]( https://bundlehunt.com/ )
on extract_urls()
	-- assumes markdown format created by my standard script with spaces after parens
	set cmd to "pbpaste | cut -d \"(\" -f 2 | cut -d \" \" -f 2"
	
	return (do shell script cmd)
end extract_urls

on new_tab()
	tell application "Safari" to activate
	tell application "System Events"
		tell process "Safari"
			click menu item "New Tab" of menu "File" of menu bar 1
		end tell
	end tell
end new_tab