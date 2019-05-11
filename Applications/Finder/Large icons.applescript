-- Script will take the front window and change it to icon view with larger icons.  Can be used to preview a folder of images or PDFs.
-- This is a very rough replacement for coverflow view in Finder which was removed from Mojave :(
-- inspired by: 
-- [Switch Quickly To Big Finder Icons With AppleScript [OS X Tips] | Cult of Mac](https://www.cultofmac.com/264329/switch-quickly-big-finder-icons-applescript-os-x-tips/)

-- Future ideas for script:
-- Make it toggle the size of the icons based on the current view

tell application "Finder"
	set thisFolder to target of front Finder window
	set the current view of front Finder window to icon view
	set icon size of icon view options of front Finder window to 384
	--set arrangement of icon view options of front Finder window to arranged by name -- don't change the sort order
	--close front Finder window
	--open thisFolder
end tell