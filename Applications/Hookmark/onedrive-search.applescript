(*
Thought I'd create a script to automate searching on OneDrive.com but can't figure it out.

The scripts below will use javascript to set the input field but I don't know how to trigger the search.

Try .submit()

Edge doesn't have an opeion to allow Apple Events which is required for executing javascript.
Safari can allow it from the developer menu.
See [assistance:Web Browser Automation \[Keyboard Maestro Wiki\]](https://wiki.keyboardmaestro.com/assistance/Web_Browser_Automation?redirect=1#:~:text=In%20Chrome%2C%20you%20must%20choose%20Allow%20JavaScript%20from,the%20Developer%20sub-menu%20in%20the%20View%20menu.%20)
[Allow Javascript from Apple Events… | Apple Developer Forums](https://developer.apple.com/forums/thread/100414)

Other ideas: try: 
[Use the Microsoft Search API to search OneDrive and SharePoint content - Microsoft Graph | Microsoft Learn](https://learn.microsoft.com/en-us/graph/search-concept-files)

Other examples
- [google chrome - Can AppleScript access browser tabs and execute javascript in them? - Stack Overflow](https://stackoverflow.com/questions/5135609/can-applescript-access-browser-tabs-and-execute-javascript-in-them)
- [javascript - How can I submit a form with input values in Chrome browser console? - Stack Overflow](https://stackoverflow.com/questions/39283861/how-can-i-submit-a-form-with-input-values-in-chrome-browser-console#:~:text=document.querySelector%20%28%27input%20%5Bname%3D%22theNameOfYourInput%22%5D%27%29.value%20%3D%20%27theValue%27%3B%20document.querySelector%20%28%27form%27%29.submit%20%28%29%3B,console%20knows%20nothing%20of%20jQuery.%20Use%20vanilla%20JS.)
- [Using javascript with applescript to submit data on a webpage - Stack Overflow](https://stackoverflow.com/questions/4464193/using-javascript-with-applescript-to-submit-data-on-a-webpage)
*)

tell application "Microsoft Edge"
	set theTab to active tab of window 1
	
	title of theTab
	
	-- get the value in the selector	
	execute theTab javascript "document.querySelector(" #ms-searchux-input-0").value"
	
	execute theTab javascript "document.querySelector(" #ms-searchux-input-0").value = 'script editor';"
	
	document.querySelector("#O365_SearchBoxContainer_container > div > form").submit()

end tell


tell application "Safari"
	
	--do JavaScript "alert('example')" in document 1
	
	-- set the value in the search box	
	do JavaScript "document.querySelector(\"#ms-searchux-input-0\").value = 'solar';" in document 1
	
	-- get the value in the search box
	do JavaScript "document.querySelector(\"#ms-searchux-input-0\").value;" in document 1
	
	class="submitSearchButton-198 visible-197"
	
	//*[@id="O365_SearchBoxContainer_container"]/div/form/button[3]
	#O365_SearchBoxContainer_container > div > form > button.submitSearchButton-198.visible-197
	document.querySelector("#O365_SearchBoxContainer_container > div > form > button.submitSearchButton-195.visible-194")
end tell
