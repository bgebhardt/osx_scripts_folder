-- Script to get the active document name and create a link to it based on what is in clipboard. It assumes you have just copied a link to the doc in the clipboard. 
-- After running the clipboard has an RTF version of the link with a friendly doc name. It's the same as copying the link in a web broswer for sharing.
-- turning HTML to rtf inspired by and copied from https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437

global bolDebug
set bolDebug to false

property gStyleLink : "color:blue"
property gstrFont : "font-family:verdana,geneva,sans-serif;"
property gstrLinkFontSize : "font-size:12px;"

tell application "Microsoft Excel"
	set link to the clipboard
	-- https://microsoft.sharepoint-df.com/:w:/t/M365ProductROB/EU9Fzul1OIVDhkhSxl5YbL8BYd9SbfpsCvmaG5fh9OVrbA?e=130dXk
	set d to active workbook
	set linkText to (name of d)
	
	-- hack to make sure we have text from the clipboard. If not we stop the script
	-- this works around errors trying to pass the script RTF or other non-text
	try
		link as text
	on error
		beep 4
		return -1
	end try

	-- markdown
	-- set link to "(" & name of d & ")[" & theClip & "]"
	
	-- create the HTML link; <a href="url">link text</a>
	--set HTMLlink to "<a href=\"" & link & "\">" & name of d & "</a>"
	set HTMLlink to my createHTMLLink(linkText, link)
	
	log (get HTMLlink)
	-- check the first few characters look like a microsoft sharepoint link (MSFT internal only)
	if length of link is greater than 17 then
		set substr to characters 1 thru 17 of link as string
		-- match on "https://microsoft" 
		--match this so it works for https://microsoft.sharepoint-df.com too.
		--and match this so it works for https://microsoft-my.sharepoint.com too.
		if (substr) is equal to "https://microsoft" then
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


###ÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑ
#      COPY HTML TO CLIPBOARD AS RTF:  copyHTMLasRTFtoClipboard
###ÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑ

on copyHTMLasRTFtoClipboard(pstrHTML)
	
	if bolDebug then display dialog "ENTER copyHTMLasRTFtoClipboard"
	
	-- REWRITTEN AS RTF AND COPIED TO THE CLIPBOARD
	set lstrCMD to "echo " & quoted form of pstrHTML & " | textutil -format html -convert rtf -stdin -stdout | pbcopy -Prefer rtf"
	do shell script lstrCMD
	
	if bolDebug then
		display notification pstrHTML with title "Copy RTF to Clipboard"
	end if
	
end copyHTMLasRTFtoClipboard

###ÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑ
#      Create HTML Link:    createHTMLLink
###ÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑ

on createHTMLLink(pstrLinkText, pstrURL)
  
  set strHTMLLink to "<a href=\"" & pstrURL & "\" style=\"" & gStyleLink & "\">" & pstrLinkText & "<a>"
  
  -- MUST include a space character just before the </span> in order to keep font styles --
  set strHTMLLink to "<span style=\"" & gstrFont & gstrLinkFontSize & "\">" & strHTMLLink & " </span>"
  
  return strHTMLLink
  
end createHTMLLink