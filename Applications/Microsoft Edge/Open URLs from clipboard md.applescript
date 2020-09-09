-- script that opens all urls in the text on the clipboard.
-- it assumes urls are newline separated.

-- Tip: use with an automator action that can grab the URLs
-- a service version of it can be found in the Scripts folder
-- under Automater and Services.

-- Example:
--* [applescript strip character - Bing]( https://www.bing.com/search?q=applescript+strip+character&form=APMCS1&PC=APMC )
--* [applescript examples - Bing]( https://www.bing.com/search?q=applescript+examples&FORM=R5FD )
tell application "Microsoft Edge"
	try
		set urls to (the clipboard)
		set urls to my extract_urls(get the clipboard)
		log "extracted urls:" & urls
		
		set numParagraphs to (number of paragraphs of urls)
		
		repeat with n from 1 to numParagraphs
			log "** here"
			log paragraph n of urls
			set the theURL to paragraph n of urls
			my new_tab(theURL)
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
		set theURL to i -- my extract_urls(i)
		set theURL to my extract_url(i)
		if theURL is not "" then -- remove blanks
			set theUrls to theURL & return & theUrls
		end if
		log "4. " & (get theURL)
	end repeat
	return theUrls
end extract_urls

-- assumes urls are on the clipboard
-- example url: "* [Create Your Ultra Premium Mac Bundle]( https://bundlehunt.com/ )
-- extracts the URL from the markdown message based on everything after "]("
on extract_url(theMarkdownURL)
	set theURL to ""
	try
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {"]("} -- declare new delimiters
		--log theMarkdownURL
		set theURL to (get text item 2 of theMarkdownURL)
		set theURL to text 1 thru -2 of theURL -- strip off the last ")"
		--		log "---" & (get theUrl) & "--"
		set AppleScript's text item delimiters to oldDelims -- restore them
	on error
		set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
	end try
	return theURL
end extract_url

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