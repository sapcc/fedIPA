#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    require_binaries dbus-broker-launch || return 1
    require_binaries busctl || return 1
    return 0
}

function depends() {
    echo systemd
    return 0
}

function install() {
    inst_multiple dbus-broker dbus-broker-launch
    inst /usr/lib/systemd/catalog/dbus-broker-launch.catalog
    inst /usr/lib/systemd/catalog/dbus-broker.catalog
    inst /usr/lib/systemd/system/dbus-broker.service
    inst /usr/lib/systemd/user/dbus-broker.service
    systemctl -q --root "$initdir" enable dbus-broker.service
}
