#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_chrome.sh | bash
#

echo "installing google chrome - https://www.google.com/chrome/"

if ls /Applications/ | grep -i -q Chrome; then
  echo "Chrome.app is already installed..."
else
  wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg -P ~/Downloads/
  open ~/Downloads/googlechrome.dmg
  sudo cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
fi
