#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    return 0
}

function depends() {
    echo systemd
    return 0
}

function install() {
    # files from rpm:dbus-common
    mapfile -t _rpm_files < <(rpm -ql dbus-broker dbus-common dbus-libs)
    inst_multiple -o "${_rpm_files[@]}"
    systemctl -q --root "$initdir" enable dbus.socket
    systemctl -q --root "$initdir" enable dbus-broker.service
}
