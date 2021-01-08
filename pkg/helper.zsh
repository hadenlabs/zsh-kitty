#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# editkitty edit settings for kitty
function editkitty {
    if [ -z "${EDITOR}" ]; then
        message_warning "it's neccesary the var EDITOR"
        return
    fi
    "${EDITOR}" "${KITTY_FILE_SETTINGS}"
}
