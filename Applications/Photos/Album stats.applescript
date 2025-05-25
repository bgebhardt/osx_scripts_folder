-- This script counts the number of photos in a selected album in Photos by year
tell application "Photos"

-- Get the selected photos
set selectedItems to selection
if selectedItems is {} then
    display dialog "Please select one or more photos in Photos." buttons {"OK"} default button 1
    return
end if

-- Filter selection to only media items (photos/videos)
set photoList to {}
repeat with anItem in selectedItems
    if class of anItem is media item then
        set end of photoList to anItem
    end if
end repeat

if photoList is {} then
    display dialog "No photos selected." buttons {"OK"} default button 1
    return
end if

-- Count photos by year
set yearCounts to {}
repeat with aPhoto in photoList
    set photoDate to date of aPhoto
    set photoYear to year of photoDate as string
    set found to false
    repeat with i from 1 to count of yearCounts
        if item 1 of item i of yearCounts is photoYear then
            set item 2 of item i of yearCounts to (item 2 of item i of yearCounts) + 1
            set found to true
            exit repeat
        end if
    end repeat
    if not found then
        set end of yearCounts to {photoYear, 1}
    end if
end repeat

-- Build summary
set summary to "Photos by Year in Selection:" & return
repeat with y in yearCounts
    set summary to summary & item 1 of y & ": " & item 2 of y & return
end repeat

-- display dialog summary buttons {"OK"} default button 1

end tell
