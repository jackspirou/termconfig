#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_solarized.sh | bash
#

echo "installing solarized theme - http://ethanschoonover.com/solarized"

wget http://ethanschoonover.com/solarized/files/solarized.zip -P ~/Downloads/
open ~/Downloads/solarized.zip
# open ~/Downloads/solarized/osx-terminal.app-colors-solarized/xterm-256color/Solarized\ Dark\ xterm-256color.terminal

# Use a modified version of the Solarized Dark theme by default in Terminal.app
osascript <<EOD
tell application "Terminal"

  local allOpenedWindows
	local initialOpenedWindows
	local windowID
	set themeName to "Solarized Dark xterm-256color"

	(* Store the IDs of all the open terminal windows. *)
  set initialOpenedWindows to id of every window

	(*
		Open the custom theme so that it gets added to the list of available terminal themes
		note: this will open two additional terminal windows.
	*)
  do shell script "open '~/Downloads/solarized/osx-terminal.app-colors-solarized/xterm-256color/" & themeName & ".terminal'"

	(* Wait a little bit to ensure that the custom theme is added. *)
	delay 1

	(* Set the custom theme as the default terminal theme. *)
	set default settings to settings set themeName

	(* Get the IDs of all the currently opened terminal windows. *)
	set allOpenedWindows to id of every window
	repeat with windowID in allOpenedWindows

		(* Close the additional windows that were opened in order to add the custom theme to the list of terminal themes. *)
		if initialOpenedWindows does not contain windowID then
			close (every window whose id is windowID)

		(* Change the theme for the initial opened terminal windows to remove the need to close them in order for the custom theme to be applied. *)
		else
			set current settings of tabs of (every window whose id is windowID) to settings set themeName
		end if
	end repeat
end tell
EOD

if ls /Applications/ | grep -i -q iTerm; then
  echo "iTerm is installed, adding solorized for iTerm as well..."
  open ~/Downloads/solarized/iterm2-colors-solarized/Solarized\ Dark.itermcolors
else
  echo "iTerm not found, if you install it later add solorized for iTerm as well..."
fi
