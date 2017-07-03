-- simple get link script.
tell application "Google Chrome"
	set i to active tab of window 1
	set theURL to URL of i
	--	set theTitle to title of i
end tell