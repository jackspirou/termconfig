#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install.sh | bash
#
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install.sh chrome iterm atom | bash
#

echo "bootstrapping Yosemite - https://github.com/initcng/yosemite"

curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_homebrew.sh | bash
curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_wget.sh | bash

for arg in "$@"
do
    case $arg in
        "chrome" )
          curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_chrome.sh | bash
          ;;
        "iterm" )
          curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_iterm2.sh | bash
          ;;
        "atom" )
          curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_atom.sh | bash
          ;;
   esac
done
