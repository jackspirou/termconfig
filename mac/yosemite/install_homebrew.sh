#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_homebrew.sh | bash
#

echo "installing homebrew - http://brew.sh"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install brew-cask
