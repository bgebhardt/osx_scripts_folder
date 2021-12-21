-- get the current doc link as markdown

tell application "Microsoft Word"
	set d to active document
	set link to "(" & name of d & ")[" & path of d & "]"
	set the clipboard to link
end tell