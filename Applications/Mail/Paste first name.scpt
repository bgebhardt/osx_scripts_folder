(*
Paste first name 

Script to grab the sender of an email and paste their first name.
Saving keystrokes and keeping emails personal.

It assumes that the first message selected in your main message viewer is on the message you just replied to.  Not ideal but good enough to get started.

*)


tell application "Mail"
	--	properties of (get window 1)
	--get selection
	set theMsg to my getTheMessageToReply()
	
	set theOldClipboard to the clipboard
	set the clipboard to (my getTheSenderName(theMsg) & ",\n")
	my pasteText()
	set the clipboard to theOldClipboard	
end tell


on getTheSenderName(theMsg)
	tell application "Mail"
		return word 1 of (get sender of theMsg)
	end tell
end getTheSenderName

on getTheMessageToReply()
	tell application "Mail"
		set theMsgs to (selected messages of message viewer 1)
		return first item of theMsgs
	end tell
end getTheMessageToReply

on pasteText()
	-- 
	tell application "System Events"
		tell process "TextEdit" to keystroke "v" using {command down, option down, shift down} -- past and match style
	end tell
end pasteText
