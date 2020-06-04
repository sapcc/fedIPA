#!/bin/bash

function check() {
    return 0
}

function depends() {
    echo systemd
    echo systemd-networkd
}

function install() {
    inst_multiple \
        /usr/bin/systemd-resolve
        $systemdutildir/systemd-resolvd \
        $systemdutildir/systemd-resolve-host \
	$systemdsystemunitdir/systemd-resolved.service \
	/etc/systemd/resolved.conf \
    grep '^systemd-resolve:' $dracutsysrootdir/etc/passwd 2>/dev/null >> "$initdir/etc/passwd"
    echo "nameserver 127.0.0.53" > "$initdir/etc/resolv.conf"
    systemctl -q --root "$initdir" enable systemd-resolved.service
}
