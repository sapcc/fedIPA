#!/bin/bash

function check() {
    return 0
}

function depends() {
    echo systemd
    echo systemd-networkd
}

function install() {
    inst systemd-resolve
    inst resolvectl
    inst $systemdutildir/systemd-resolved
    inst $systemdsystemunitdir/systemd-resolved.service
    inst /usr/share/dbus-1/system-services/org.freedesktop.resolve1.service
    inst /usr/share/dbus-1/system.d/org.freedesktop.resolve1.conf
    inst /usr/share/polkit-1/actions/org.freedesktop.resolve1.policy
    inst /etc/systemd/resolved.conf
    grep '^systemd-resolve:' $dracutsysrootdir/etc/passwd 2>/dev/null >> "$initdir/etc/passwd"
    echo "nameserver 127.0.0.53" > "$initdir/etc/resolv.conf"
    systemctl -q --root "$initdir" enable systemd-resolved.service
}
