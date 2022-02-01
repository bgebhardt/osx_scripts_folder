-- gets markdown style link for front window of PowerPoint.

tell application "Microsoft PowerPoint"
	-- get document windows
	set win to document window 1
	
	name of win
	
	properties of win
	
	set pres to presentation of win
	
    -- path of presentation of win -- path where it is located
	full name of pres -- full path to presentation
	name of pres -- ppt name
	
	-- markdown link
	set link to "[" & name of pres & "](" & full name of pres & ")"
	set the clipboard to link
end tell
