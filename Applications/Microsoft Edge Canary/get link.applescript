-- simple get link script.
tell application "Microsoft Edge"
	set i to active tab of window 1
	set theURL to URL of i
	--	set theTitle to title of i
end tell