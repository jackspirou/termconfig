#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/jackspirou/termconfig/master/mac/yosemite/config_oh-my-zsh.sh | bash
#

echo "configuring oh-my-zsh"

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  rm $ZSH/plugins/battery/battery.plugin.zsh
  wget -O $ZSH/plugins/battery/battery.plugin.zsh https://raw.githubusercontent.com/jackspirou/termconfig/master/oh-my-zsh/plugins/battery/battery.plugin.zsh

  wget -O $ZSH/themes/termconfig.zsh-theme https://raw.githubusercontent.com/jackspirou/termconfig/master/oh-my-zsh/themes/termconfig.zsh-theme

  git -C $ZSH add -A
  git -C $ZSH commit -m "termconfig updates"
fi
