#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_iterm2.sh | bash
#

echo "installing iTerm2 - http://iterm2.com"

if ls /Applications/ | grep -i -q iTerm; then
  echo "iTerm.app is already installed..."
else
  wget -O ~/Downloads/iterm2.zip https://iterm2.com/downloads/stable/iTerm2_v2_0.zip
  open ~/Downloads/iterm2.zip
  sudo mv ~/Downloads/iTerm.app /Applications/iTerm.app
fi
