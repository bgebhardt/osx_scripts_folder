-- copy urls to clipboard in markdown link format
-- [tite]("url")
tell application "Safari"
	set URL_list to ""
	set i to current tab of window 1
	set mdURL to "- [" & name of i & "]( " & URL of i & " )"
	set URL_list to mdURL & return & URL_list
	
	set the clipboard to URL_list
	URL_list
end tell