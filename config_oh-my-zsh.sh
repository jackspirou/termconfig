#!/usr/bin/env bash

#
# install:
#   curl -sL https://raw.githubusercontent.com/initcgf/yosemite/master/config_oh-my-zsh.sh | bash
#

echo "configuring oh-my-zsh"

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  rm $ZSH/plugins/battery/battery.plugin.zsh
  wget -O $ZSH/plugins/battery/battery.plugin.zsh https://raw.githubusercontent.com/initcfg/bin/master/oh-my-zsh/plugins/battery/battery.plugin.zsh

  wget -O $ZSH/themes/initcfg.zsh-theme https://raw.githubusercontent.com/initcfg/bin/master/oh-my-zsh/themes/initcfg.zsh-theme

  git -C $ZSH add -A
  git -C $ZSH commit -m "initcfg updates"
fi
