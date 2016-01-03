#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_extensions.sh | bash
#

echo "configuring extensions"

defaults write NSGlobalDomain AppleShowAllExtensions -bool true; killall Finder;
