-- copy urls to clipboard in Jira's link format
-- [link title|http://example.com]
tell application "Microsoft Edge Dev"
	set i to active tab of window 1
	set mdURL to "[" & title of i & "|" & URL of i & "]"	
	set the clipboard to mdURL
end tell