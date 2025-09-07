-- script to set rating to 3 stars
-- star ratings by increments of 20
set theRating to 60 -- 3 stars

if application "Music" is running then
	tell application "Music"
		try
			set theOldRating to rating of current track
			set rating of current track to theRating
			
			display notification "Rating set to " & (theRating div 20) & " stars from " & (theOldRating div 20) & "." with title "Rating changed"
		on error
			-- catching error related to getting current track which doesn't work when you first start music
			display notification "No Track Playing in Music app." with title "Rating not changed"
		end try
	end tell
else
	-- do nothing
end if

