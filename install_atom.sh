#!/usr/bin/env bash
 
#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_atom.sh | bash
#

echo "installing atom - https://atom.io"

wget https://atom.io/download/mac -P ~/Downloads/
open ~/Downloads/atom-mac.zip
sudo mv ~/Downloads/Atom.app /Applications/Atom.app
