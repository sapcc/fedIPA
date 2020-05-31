#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    require_binaries python3 || return 1
    return 255
}

function install() {
    inst_multiple python3 python3.7 python3.7m
}
