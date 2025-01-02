-- This script looks for a url on the clipboard and parses out the directory and filename parts
-- it then opens the directory in Microsoft Edge
-- This is to be used with Hookmark. When you copy a link with Hookmark in an Microsoft Office app (like Word) this script will open up the directory the document is in.

-- Get the clipboard content
set clipboardContent to the clipboard as text

-- TODO: add more error checking

-- test examples
--set clipboardContent to "https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx"

--set clipboardContent to "[M365 Newsletter planning doc.docx](https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx)"

-- TODO: this example currently does not work. Just works with Hookmark links and markdown links
--set clipboardContent to "M365 Newsletter planning doc.docx https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx) with text"

-- https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx
-- [M365 Newsletter planning doc.docx](https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx)
-- https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx

log "clipboard is " & clipboardContent

-- Check if the clipboard content is a valid URL
--if clipboardContent starts with "http://" or clipboardContent starts with "https://" then
-- Parse the URL into the filename part and the rest

-- parse the url into directory and filename after isolating it in the clipboard text
--set urlComponents to my parseOutURL(clipboardContent)
try
	set urlComponents to extractURLFromMarkdown(clipboardContent)
	set urlComponents to my parseURL(urlComponents)
on error errMsg number errNum
	log "Error: Can't parse out url. " & errMsg & " (" & errNum & ")"
	beep 3
	return
end try

--else
--display dialog "Clipboard does not contain a valid URL."
--return
--end if

-- Parse the URL into the filename part and the rest
-- set urlComponents to my parseURL(clipboardContent)

-- Extract the URL from the url
-- TODO: this is fragile as it depends on space delimiters for URLs. 
-- works by accident on markdown URLs because the "file part" which has the ")" is removed later in the run script "script"
-- This code can be used to find and remove the ")" part of the URL
-- Extract the URL from the markdown link
-- set AppleScript's text item delimiters to "("
-- set clipboardParts to text items of clipboardContent
-- set AppleScript's text item delimiters to ")"
-- set urlPart to text item 2 of clipboardParts
-- set AppleScript's text item delimiters to ""
-- set clipboardContent to urlPart
on parseOutURL(theURL)
	log "URL: " & theURL
	set AppleScript's text item delimiters to " "
	set clipboardParts to text items of theURL
	set AppleScript's text item delimiters to ""
	set urlPart to ""
	repeat with part in clipboardParts
		if part starts with "http://" or part starts with "https://" then
			set urlPart to part
			exit repeat
		end if
	end repeat
	return urlPart
end parseOutURL

-- Function to extract content between "(" and ")"
on extractURLFromMarkdown(markdownText)
	try
		log "markdown: " & markdownText
		set AppleScript's text item delimiters to "("
		set parts to text items of markdownText
		log "parts " & parts
		log "count: " & (count of parts)
		set urlPart to text item 2 of parts
		log "urlPart " & urlPart
		set AppleScript's text item delimiters to ")"
		log "#HERE: " & text 1 thru -2 of urlPart
		set AppleScript's text item delimiters to ""
	on error errMsg number errNum
		log "Error: " & errMsg & " (" & errNum & ")"
		log "Assuming not of markdown format so returning original text"
		return markdownText
	end try
	return urlPart
end extractURLFromMarkdown

-- returns the directory part and the filename part of a URL
on parseURL(theURL)
	log "URL: " & theURL
	set AppleScript's text item delimiters to "/"
	set urlParts to text items of theURL
	set AppleScript's text item delimiters to ""
	set filename to last item of urlParts
	set directory to text 1 thru ((offset of filename in theURL) - 1) of theURL
	return {directory:directory, filename:filename}
end parseURL

set sharepointDirectory to directory of urlComponents
set filename to filename of urlComponents

tell application "Microsoft Edge"
	--    activate
	open location sharepointDirectory
end tell

return sharepointDirectory

-- Define the pattern to match the SharePoint URL
set urlPattern to "https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/"

-- Check if the clipboard content matches the pattern
-- if clipboardContent starts with urlPattern then
--     -- Extract the SharePoint directory from the URL
--     set sharepointDirectory to text from character 1 to character (offset of "/M365%20Newsletter%20planning%20doc.docx" in clipboardContent) of clipboardContent


-- Write an applscript that will

-- 1. Look on the clipboard for a url maching this form
-- https://microsoft.sharepoint-df.com/teams/M365Consumer/Shared%20Documents/News%20post%20drafts/M365%20Newsletter%20planning%20doc.docx

-- 2. extract the Sharepoint directory from the url 

-- 3. open that sharepoint directory in Microsoft Edge