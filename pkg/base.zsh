#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function kitty::sync {
    message_info "kitty sync conf for ${KITTY_PACKAGE_NAME}"
    rsync -avzh --progress "${ZSH_KITTY_PATH}/conf/" "${KITTY_CONF_DIR}/"
    message_success "sync for ${KITTY_PACKAGE_NAME}"
}

function kitty::install {
    message_info "Installing kitty"
    kitty::internal::kitty::install
}
