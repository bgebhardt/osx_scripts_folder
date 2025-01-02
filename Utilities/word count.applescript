-- word count script to quickly count words and characters of what's on the clipboard.

-- [Word and Character Count service for Mac OS X · GitHub](https://gist.github.com/mechanomi/1616556)
--   Here is script that dos it as a service if I ever want to get 

-- Another way of doing it:
-- [How to Set Up a System-Wide Word Count Service on Your Mac - MacRumors](https://www.macrumors.com/how-to/system-wide-word-count-service-macos/#:~:text=To%20do%20so%2C%20launch%20System,the%20bottom%20of%20the%20list.)


set a to (get the clipboard)

count words of a
count characters of a

-- set up the first few characters to display to remember what's on the clipboard.
set firstChars to ""
set numCharsToShow to 100
if length of a > numCharsToShow then
	set firstChars to (characters 1 through numCharsToShow of a as string) & "..."
else
	set firstChars to a
end if

display dialog "Clipboard text is " & (count words of a) & " words and " & (count characters of a) & " characters." & return & "==> " & firstChars & "..."
