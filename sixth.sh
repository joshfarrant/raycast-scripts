#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Sixth Window Position
# @raycast.mode silent
# @raycast.packageName System

# Optional parameters:
# @raycast.icon images/custom-window-size.png

# Documentation:
# @raycast.author Josh Farrant
# @raycast.authorURL https://github.com/joshfarrant
# @raycast.description Resize the current window and place it within 1/6 of the screen

# @raycast.argument1 { "type": "text", "placeholder": "[Position][Mutliplier]" }

on run argv
	tell application "System Events"
		set frontApp to name of first application process whose frontmost is true
	end tell

	set theApp to frontApp
	set argString to item 1 of argv
	if (count of characters of argString) = 1 then
		set positionIndex to argString as integer
		set multiplier to 1
	else
		set positionIndex to text 1 thru 1 of argString as integer
		set multiplier to text 2 thru 2 of argString as integer
	end if

	set baseWidth to 853
	set appHeight to 1440
	set appWidth to baseWidth * multiplier
	set appXPosition to ((positionIndex - 1) * baseWidth) + 1
	set appYPosition to 0

	tell application frontApp to activate
	tell application "System Events" to tell application process frontApp
		try
			set size of window 1 to {appWidth, appHeight}
			set position of window 1 to {appXPosition, appYPosition}
		on error errmess
			log errmess
			-- no window open
		end try
	end tell
end run
