-- script that opens all urls in the text on the clipboard.
-- it assumes urls are newline separated.

-- Tip: use with an automator action that can grab the URLs
-- a service version of it can be found in the Scripts folder
-- under Automater and Services.

-- Example:
--* [applescript strip character - Bing]( https://www.bing.com/search?q=applescript+strip+character&form=APMCS1&PC=APMC )
--* [applescript examples - Bing]( https://www.bing.com/search?q=applescript+examples&FORM=R5FD )

tell application "Safari"
	try
		set urls to (the clipboard)
		set urls to my extract_urls(get the clipboard)
		log "extracted urls:" & urls
		
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

-- extract the urls from a paragraph of markdown urls
on extract_urls(theMarkdownURLs)
	set delimitedList to paragraphs of theMarkdownURLs
	set theUrls to ""
	
	--log (get delimitedList)
	--log (length of delimitedList)
	
	-- TODO: should fix this algorithm to not have blanks but will do for now.  Currently it adds one extra newline which is an empty tab.
	repeat with i in delimitedList
		set theUrl to i -- my extract_urls(i)
		set theUrl to my extract_url(i)
		if theUrl is not "" then -- remove blanks
			set theUrls to theUrl & return & theUrls
		end if
		log "4. " & (get theUrl)
	end repeat
	return theUrls
end extract_urls

-- assumes urls are on the clipboard
-- example url: "* [Create Your Ultra Premium Mac Bundle]( https://bundlehunt.com/ )
-- extracts the URL from the markdown message based on everything after "]("
on extract_url(theMarkdownURL)
	set theUrl to ""
	try
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {"]("} -- declare new delimiters
		--log theMarkdownURL
		set theUrl to (get text item 2 of theMarkdownURL)
		set theUrl to text 1 thru -2 of theUrl -- strip off the last ")"
		--		log "---" & (get theUrl) & "--"
		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try
	return theUrl
end extract_url

on new_tab()
	tell application "Safari" to activate
	tell application "System Events"
		tell process "Safari"
			click menu item "New Tab" of menu "File" of menu bar 1
		end tell
	end tell
end new_tab