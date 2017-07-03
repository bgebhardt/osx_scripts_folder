-- script to create an Outlook email from the current url and clipboard
set gEmailBody to ""
set gSubject to ""

-- simple get link script.
tell application "Google Chrome"
	set i to active tab of window 1
	set gSubject to title of i
	set gEmailBody to "[" & title of i & "]( " & URL of i & " )" -- in markdown format
	set gEmailBody to title of i & " -- " & URL of i -- in user friendly format
end tell

tell application "Microsoft Outlook"
	
	set newMessage to make new outgoing message with properties {subject:gSubject, content:gEmailBody}
	#	make new recipient at newMessage with properties {email address:{name:"Name", address:"test@example.com"}}
	#make new cc recipient at newMessage with properties {email address:{name:"Name", address:"test@example.com"}}
	
	open newMessage
end tell