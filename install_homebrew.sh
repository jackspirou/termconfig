#!/usr/bin/env bash
 
#
# install:
#   curl -sL https:/raw.github.com/gist/2108403/hack.sh | sh
#

echo "Installing homebrew - http://brew.sh"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install brew-cask
