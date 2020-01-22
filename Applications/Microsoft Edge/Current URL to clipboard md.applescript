-- copy urls to clipboard in markdown link format
-- [tite]("url")
tell application "Microsoft Edge"
	set URL_list to ""
	set i to active tab of window 1
	set mdURL to "[" & title of i & "](" & URL of i & ")"
	set URL_list to mdURL & return & URL_list
	
	set the clipboard to URL_list
	URL_list
end tell