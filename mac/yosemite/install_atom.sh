#!/usr/bin/env bash
 
#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_atom.sh | bash
#

echo "installing atom - https://atom.io"

wget https://atom.io/download/mac -P ~/Downloads/
open ~/Downloads/atom-mac.zip
sudo mv ~/Downloads/Atom.app /Applications/Atom.app
