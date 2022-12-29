-- Script to get the active document name and create a link to it based on what is in clipboard. It assumes you have just copied a link to the doc in the clipboard. 
-- After running the clipboard has an RTF version of the link with a friendly doc name. It's the same as copying the link in a web broswer for sharing.
-- turning HTML to rtf inspired by and copied from https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437

global bolDebug
set bolDebug to false

tell application "Microsoft Excel"
	set link to the clipboard
	-- https://microsoft.sharepoint-df.com/:w:/t/M365ProductROB/EU9Fzul1OIVDhkhSxl5YbL8BYd9SbfpsCvmaG5fh9OVrbA?e=130dXk
	set d to active document
	
	-- markdown
	-- set link to "(" & name of d & ")[" & theClip & "]"
	
	-- create the HTML link; <a href="url">link text</a>
	set HTMLlink to "<a href=\"" & link & "\">" & name of d & "</a>"
	
	log (get HTMLlink)
	-- check the first few characters look like a microsoft sharepoint link (MSFT internal only)
	if length of link is greater than 28 then
		set substr to characters 1 thru 28 of link as string
		--match this so it works for https://microsoft.sharepoint-df.com too.
		if (substr) is equal to "https://microsoft.sharepoint" then
			-- matches so continue
						
			-- and put it as RTF on the clipboard
			my copyHTMLasRTFtoClipboard(HTMLlink)
			--display dialog "matches"
			beep 2
		else
			beep 3
		end if
	else -- does not match
		beep 1
		-- do nothing
		--display dialog "NOT match"
	end if
	
end tell


###——————————————————————————————————————————————
#      COPY HTML TO CLIPBOARD AS RTF:  copyHTMLasRTFtoClipboard
###——————————————————————————————————————————————

on copyHTMLasRTFtoClipboard(pstrHTML)
	
	if bolDebug then display dialog "ENTER copyHTMLasRTFtoClipboard"
	
	-- REWRITTEN AS RTF AND COPIED TO THE CLIPBOARD
	set lstrCMD to "echo " & quoted form of pstrHTML & " | textutil -format html -convert rtf -stdin -stdout | pbcopy -Prefer rtf"
	do shell script lstrCMD
	
	if bolDebug then
		display notification pstrHTML with title "Copy RTF to Clipboard"
	end if
	
end copyHTMLasRTFtoClipboard
