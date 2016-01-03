#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/mac/yosemite/master/config_dock.sh | bash
#

echo "configuring dock"

defaults write com.apple.dock autohide-time-modifier -float 0.2; killall Dock;
