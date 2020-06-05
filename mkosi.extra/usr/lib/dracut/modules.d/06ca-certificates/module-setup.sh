#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    return 0
}

function install() {
    mapfile -t _rpm_content < <(rpm -ql ca-certificates)
    inst_multiple -o "${_rpm_content[@]}"
}
