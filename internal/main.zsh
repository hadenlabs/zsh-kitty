#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kitty::internal::main::factory {
    # shellcheck source=/dev/null
    source ${ZSH_KITTY_PATH}/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source ${ZSH_KITTY_PATH}/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source ${ZSH_KITTY_PATH}/internal/linux.zsh
      ;;
    esac
}

kitty::internal::main::factory

if ! type -p rsync > /dev/null; then kitty::internal::rsync::install; fi
if ! type -p kitty > /dev/null; then kitty::internal::kitty::install; fi
