#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_solarized.sh | bash
#

echo "installing solarized theme - http://ethanschoonover.com/solarized"

wget http://ethanschoonover.com/solarized/files/solarized.zip -P ~/Downloads/
open ~/Downloads/solarized.zip
open ~/Downloads/solarized/osx-terminal.app-colors-solarized/xterm-256color/Solarized\ Dark\ xterm-256color.terminal

if ls /Applications/ | grep -i -q iTerm; then
  echo "iTerm is installed, adding solorized for iTerm as well..."
  open ~/Downloads/solarized/iterm2-colors-solarized/Solarized\ Dark.itermcolors
else
  echo "iTerm not found, if you install it later add solorized for iTerm as well..."
fi
