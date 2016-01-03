#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install.sh | bash
#
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install.sh chrome iterm atom | bash
#

echo "Termconfig Yosemite - https://github.com/jackspirou/termconfig"

curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_homebrew.sh | bash
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_wget.sh | bash

for arg in "$@"
do
    case $arg in
        "chrome" )
          # Install Chrome
          curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_chrome.sh | bash
          ;;
        "iterm" )
          # Install iTerm2
          curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_iterm2.sh | bash
          ;;
        "atom" )
          # Install Atom
          curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_atom.sh | bash
          ;;
   esac
done

# Configure Keyboard
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_keyboard.sh | bash

# Configure Trackpad
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_trackpad.sh | bash

# Configure Scroll
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_scroll.sh | bash

# Configure Hidden Files
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_hidden.sh | bash

# Configure Extensions
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_extensions.sh | bash

# Configure Finder
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_finder.sh | bash

# Configure Dock
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_dock.sh | bash

# Install Inconsolata Font
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_inconsolata.sh | bash

# Install Solarized Terminal Theme
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_solarized.sh | bash

# Install oh-my-zsh
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/install_oh-my-zsh.sh | bash

# Configure oh-my-zsh
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_oh-my-zsh.sh | bash

# Configure termconfig-zsh.theme
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_zsh-theme.sh | bash

# Configure terminal
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_terminal.sh | bash

# Restart
curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/restart.sh | bash
