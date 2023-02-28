# Hookmark notes

This folder contains all the Hookmark Applescripts to override the defaults in Hookmark.

Reference:

- [Link-friendly Mac Apps – Hookmark](https://hookproductivity.com/what-mac-apps-are-compatible-with-hook-app)
- [Creating and Modifying Integration Scripts – Hookmark](https://hookproductivity.com/help/integration/creating-integration-scripts/)

# Office Scripts to update

Links with fixes for Office apps
[Excel OneDrive file not Hookable \[workarounds\] - Discussion & Help - Hookmark Forum](https://discourse.hookproductivity.com/t/excel-onedrive-file-not-hookable-workarounds/2367/10)
[Using Hookmark in Microsoft OneDrive with Microsoft Office Apps – Hookmark](https://hookproductivity.com/help/integration/using-hook-with-onedrive/)

## Word - replace Get Address with

tell application "Microsoft Word"
    set activeDoc to active document
    set activeDocName to name of activeDoc
    set activeDocPath to path of activeDoc
    set fullURL to posix full name of activeDoc
    if fullURL does not start with "http" then
        return "file://" & POSIX path of fullURL
    end if
end tell

set appURL to "ms-word:ofe|u|" & fullURL

## PowerPoint - replace Get Address with

tell application "Microsoft PowerPoint"
    set activeDoc to active presentation
    set activeDocName to name of activeDoc
    set activeDocPath to path of activeDoc
    set fullURL to full name of activeDoc
    if fullURL does not start with "http" then
        return "file://" & POSIX path of fullURL
    end if
end tell
set appURL to "ms-powerpoint:ofe|u|" & fullURL

## Excel - replace Get Address with

tell application "Microsoft Excel"
	set activeDoc to active workbook
	set activeDocName to name of active workbook
	set activeDocPath to path of active workbook
	set fullURL to full name of active workbook
	if fullURL does not start with "http" then
		return "file://" & POSIX path of fullURL
	end if
end tell

set appURL to "ms-excel:ofe|u|" & fullURL

## How to create RTF links on the Mac

Inspired by [AppleScript to Create Rich Text Hyperlink with Custom Protocol from Selected Text](https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437)

_markdown version_
[AppleScript to Create Rich Text Hyperlink with Custom Protocol from Selected Text](https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437)

_html version_
<a href="https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437">AppleScript to Create Rich Text Hyperlink with Custom Protocol from Selected Text<a>

_command to convert and copy as RTF_
echo "<a href="https://gist.github.com/JMichaelTX/603c98d5f12ffcf5be1b080285982437">AppleScript to Create Rich Text Hyperlink with Custom Protocol from Selected Text<a>" | textutil -format html -convert rtf -stdin -stdout | pbcopy -Prefer rtf

In AppleScript use quoted form of <string variable> before passing to "do shell script"