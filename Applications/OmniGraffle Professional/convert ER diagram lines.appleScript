
tell application "OmniGraffle Professional 4"
	tell canvas of front window
		
		set theLines to get lines
		
		-- set theLine to item 2 of lines -- for test
		repeat with theLine in lines
			head type of theLine
			tail type of theLine
			try
				set headText to my lineText(head type of theLine)
				set headTextGraphic to make new shape at end of graphics with properties {draws stroke:false, origin:{10, 10}, autosizing:full, size:{29.0, 14.0}, text:{text:headText, alignment:center}, draws shadow:false}
				set labelConnection of headTextGraphic to theLine
				set labelPosition of headTextGraphic to 0.74
				set labelOffset of headTextGraphic to 11
				set head type of theLine to ""
			on error
				-- error handling
			end try
			
			try
				set tailText to my lineText(tail type of theLine)
				set tailTextGraphic to make new shape at end of graphics with properties {draws stroke:false, origin:{10, 10}, autosizing:full, size:{29.0, 14.0}, text:{text:tailText, alignment:center}, draws shadow:false}
				set labelConnection of tailTextGraphic to theLine
				set labelPosition of tailTextGraphic to 0.18
				set labelOffset of tailTextGraphic to 11
				set tail type of theLine to ""
			on error
				-- error handling
			end try
		end repeat
		
	end tell
end tell

on lineText(lineType)
	
	-- CrowBall --> 0..*
	if lineType is "CrowBall" then
		return "0..*"
		-- CrowBar --> 1..*
	else if lineType is "CrowBar" then
		return "1..*"
		-- DoubleBar --> exactly 1 (normal line no text)
	else if lineType is "DoubleBar" then
		return "1"
	end if
	
	return "unknown"
end lineText