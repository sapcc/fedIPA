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
    # files from rpm:dbus-common
    inst_multiple dbus-broker dbus-broker-launch
    inst /usr/lib/systemd/catalog/dbus-broker-launch.catalog
    inst /usr/lib/systemd/catalog/dbus-broker.catalog
    inst /usr/lib/systemd/system/dbus-broker.service
    inst /usr/lib/systemd/user/dbus-broker.service
    # files from rpm:dbus-common
    inst /etc/dbus-1
    inst /etc/dbus-1/session.conf
    inst /etc/dbus-1/session.d
    inst /etc/dbus-1/system.conf
    inst /etc/dbus-1/system.d
    inst /usr/lib/systemd/system/dbus.socket
    inst /usr/lib/systemd/user/dbus.socket
    inst /usr/lib/sysusers.d/dbus.conf
    inst /usr/share/dbus-1
    inst /usr/share/dbus-1/interfaces
    inst /usr/share/dbus-1/services
    inst /usr/share/dbus-1/session.conf
    inst /usr/share/dbus-1/session.d
    inst /usr/share/dbus-1/system-services
    inst /usr/share/dbus-1/system.conf
    inst /usr/share/dbus-1/system.d
    systemctl -q --root "$initdir" enable dbus.socket
    systemctl -q --root "$initdir" enable dbus-broker.service
}
