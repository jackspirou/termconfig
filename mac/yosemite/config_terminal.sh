#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/mac/yosemite/master/config_terminal.sh | bash
#

echo -e "Set UTF-8 to only be used in Terminal.app\n"
defaults write com.apple.terminal StringEncodings -array 4

echo -e "Set custom Terminal configuration values:"
echo "	theme: Solarized Dark xterm-256color"
echo "	font: Inconsolata"
echo "	font size: 15pt"
echo "	row size: 30"
echo "	column size: 130"

osascript <<EOD
tell application "Terminal"
	local allOpenedWindows
	local initialOpenedWindows
	local windowID
	set themeName to "Solarized Dark xterm-256color"
	set fontName to "Inconsolata"
	set fontSize to "15"
	set rowSize to "30"
	set columnSize to "130"

	(* Store the IDs of all the open terminal windows. *)
	set initialOpenedWindows to id of every window

	(* Set the custom theme as the default terminal theme. *)
	set default settings to settings set themeName
	set font size of default settings to fontSize
	set font name of default settings to fontName
	set number of rows of default settings to rowSize
	set number of columns of default settings to columnSize

	(* Get the IDs of all the currently opened terminal windows. *)
	set allOpenedWindows to id of every window
	repeat with windowID in allOpenedWindows

		(* Close the additional windows that were opened in order to add the custom theme to the list of terminal themes. *)
		if initialOpenedWindows does not contain windowID then
			close (every window whose id is windowID)

		(* Change the theme for the initial opened terminal windows to remove the need to close them in order for the custom theme to be applied. *)
		else
			set current settings of tabs of (every window whose id is windowID) to settings set themeName
			set font size of current settings of tabs of (every window whose id is windowID) to fontSize
			set font name of current settings of tabs of (every window whose id is windowID) to fontName
			set number of rows of current settings of tabs of (every window whose id is windowID) to rowSize
			set number of columns of current settings of tabs of (every window whose id is windowID) to columnSize

		end if
	end repeat
end tell
EOD
