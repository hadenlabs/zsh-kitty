#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kitty::internal::kitty::install {
    if ! type -p brew > /dev/null; then
        message_warning "${KITTY_MESSAGE_BREW}"
        return
    fi
    message_info "Installing ${KITTY_PACKAGE_NAME}"
    brew install --cask kitty
    message_success "Installed ${KITTY_PACKAGE_NAME}"
}

function kitty::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${KITTY_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${KITTY_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${KITTY_PACKAGE_NAME}"
}
