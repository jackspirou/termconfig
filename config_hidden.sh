#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/config_hidden.sh | bash
#

echo "configuring hidden files and folders"

defaults write com.apple.finder AppleShowAllFiles true; killall Finder;
