# Open a search in the bing work search tab based on the clipboard
# URL example format "https://www.bing.com/work/search?q=safe+limits"
# if search for safe limits

set theBaseURL to "https://www.bing.com/work/search?q="

# Get search test from the clipboard
set theSearch to (the clipboard)

# Convert spaces to pluses (+)
set theSearch to my alterString(theSearch, " ", "+")

set theURL to "https://www.bing.com/work/search?q=" & theSearch

# open in default browser
open location theURL

theURL

on alterString(thisText, delim, replacement)
	set resultList to {}
	set {tid, my text item delimiters} to {my text item delimiters, delim}
	try
		set resultList to every text item of thisText
		set text item delimiters to replacement
		set resultString to resultList as string
		set my text item delimiters to tid
	on error
		set my text item delimiters to tid
	end try
	return resultString
end alterString