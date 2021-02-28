#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export KITTY_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export KITTY_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export KITTY_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay branch:develop"
export KITTY_PACKAGE_NAME="kitty"

export KITTY_CONF_DIR=${HOME}/.config/kitty
export KITTY_FILE_SETTINGS="${KITTY_CONF_DIR}"/kitty.conf
export KITTY_THEMES_DIR=${KITTY_CONF_DIR}/themes
[ -z "${EDITOR}" ] && export EDITOR="vim"
