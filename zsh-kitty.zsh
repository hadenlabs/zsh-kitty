#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install kitty for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_KITTY_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_KITTY_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_KITTY_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_KITTY_PATH}"/pkg/main.zsh
