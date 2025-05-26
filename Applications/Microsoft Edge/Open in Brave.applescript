-- This AppleScript opens the current URL from Microsoft Edge in Brave Browser
tell application "Microsoft Edge"
    set currentURL to URL of active tab of front window
end tell

tell application "Brave Browser"
    activate
    if (count of windows) = 0 then
        make new window
    end if
    tell window 1
        set newTab to make new tab with properties {URL:currentURL}
    end tell
end tell