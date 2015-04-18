#!/usr/bin/env bash
 
#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_homebrew.sh | bash
#

echo "Installing homebrew - http://brew.sh"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install brew-cask
