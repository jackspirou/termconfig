#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/mac/yosemite/master/install_inconsolata.sh | bash
#

echo "installing inconsolata font - http://www.levien.com/type/myfonts/inconsolata.html"

wget http://www.levien.com/type/myfonts/Inconsolata.otf -P ~/Downloads/
open ~/Downloads/Inconsolata.otf
