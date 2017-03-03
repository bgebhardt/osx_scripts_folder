-- script to create an Outlook email from the current url and clipboard
set gEmailBody to ""
set gSubject to ""

tell application "Safari"
	set i to current tab of window 1
	set gSubject to name of i
	set gEmailBody to "[" & name of i & "]( " & URL of i & " )" -- in markdown format
	set gEmailBody to name of i & " -- " & URL of i -- in user friendly format
	
	-- try to add the clipboard.
	-- outlook doesn't seem to like returns.  Need to fix this.
	-- disable it for now
	try
--		set gEmailBody to gEmailBody & return & return & (the clipboard) 
	end try
	
end tell

tell application "Microsoft Outlook"
	
	set newMessage to make new outgoing message with properties {subject:gSubject, content:gEmailBody}
	#	make new recipient at newMessage with properties {email address:{name:"Name", address:"test@example.com"}}
	#make new cc recipient at newMessage with properties {email address:{name:"Name", address:"test@example.com"}}
	
	open newMessage
end tell