#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kitty::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_KITTY_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_KITTY_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_KITTY_PATH}"/internal/linux.zsh
      ;;
    esac
}

kitty::internal::main::factory

if ! core::exists rsync; then core::install rsync; fi
if ! core::exists kitty; then kitty::internal::kitty::install; fi
