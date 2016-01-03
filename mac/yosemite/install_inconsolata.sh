#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_inconsolata.sh | bash
#

echo "installing inconsolata font - https://www.google.com/fonts/specimen/Inconsolata"

wget https://github.com/jackspirou/termconfig/raw/master/fonts/ofl/inconsolata/Inconsolata-Regular.ttf -P ~/Downloads/
open ~/Downloads/Inconsolata.ttf
