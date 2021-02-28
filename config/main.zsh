#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kitty::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_KITTY_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_KITTY_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_KITTY_PATH}"/config/linux.zsh
      ;;
    esac
}

kitty::config::main::factory
