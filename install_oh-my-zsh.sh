#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/install_oh-my-zsh.sh | bash
#

echo "installing oh-my-zsh - http://ohmyz.sh"

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ ! -d "$ZSH" ]; then
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi
