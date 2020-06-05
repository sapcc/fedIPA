#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    return 0
}

function depends() {
    echo setup
    echo glibc
    return 0
}

function install() {
    mapfile -t _rpm_files < <(rpm -ql python3 python3-libs)
    inst_multiple -o "${_rpm_files[@]}"
}
