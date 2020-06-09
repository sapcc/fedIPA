#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    return 0
}

function depends() {
    return 0
}

function install() {
    declare -a _packages_to_install=("filesystem" "coreutils" "coreutils-common" "glibc" "glibc-common" "setup" "util-linux")
    _packages_to_install+=("fedora-release" "fedora-release-common")
    _packages_to_install+=("kernel-core" "kernel-modules" "kmod" "linux-firmware")
    _packages_to_install+=("gdisk" "iscsi-initiator-utils" "mdadm" "parted" "qemu-img")
    _packages_to_install+=("systemd" "systemd-libs" "systemd-udev")
    _packages_to_install+=("dbus-broker" "dbus-common" "dbus-libs" "dbus-tools")
    _packages_to_install+=("ncurses" "ncurses-libs" "ncurses-base")
    _packages_to_install+=("bash" "bash-completion" "pam" "systemd-pam" "libpwquality")
    _packages_to_install+=("grep" "sed" "gawk")
    _packages_to_install+=("ca-certificates" "openssl" "openssl-libs")
    _packages_to_install+=("bind-libs" "bind-libs-lite" "bind-utils" "curl" "wget" "iputils" "iproute")
    _packages_to_install+=("less")
    _packages_to_install+=("dmidecode" "hdparm" "ipmitool" "lshw" "pciutils" "pciutils-libs" "smartmontools" "usbutils")
    _packages_to_install+=("python3" "python3-libs")
    declare -a _rpm_files=()
    for dir in bin lib lib64 sbin; do
        mkdir -p "${initdir}/usr/${dir}"
        ln_r "usr/${dir}" "$dir"
    done
    while read -r file; do
        [[ "$file" =~ /boot/* ]] && continue
        [[ "$file" =~ /dev/* ]] && continue
        [[ "$file" =~ /run/* ]] && continue
        [[ "$file" =~ /usr/lib/.build-id/* ]] && continue
        [[ "$file" =~ /usr/share/info/* ]] && continue
        [[ "$file" =~ /usr/share/licenses/* ]] && continue
        [[ "$file" =~ /usr/share/man/* ]] && continue
        [[ "$file" =~ */vmlinuz ]] && continue # ignore explicitly the kernel
        [[ "$file" =~ *.hmac ]] && continue
        if test -e "$file"; then
            if test -d "$file"; then
                mkdir -p "${initdir}/${file}"
            fi
            inst "$file"
        fi
    done < <(rpm -ql "${_packages_to_install[@]}")
    echo "nameserver 127.0.0.53" > "$initdir/etc/resolv.conf"
    systemctl -q --root "$initdir" enable systemd-resolved systemd-networkd systemd-timesyncd
    systemctl -q --root "$initdir" enable dbus-broker.service
    systemctl -q --root "$initdir" set-default multi-user.target
    if ! [[ -e "$initdir/etc/machine-id" ]]; then
        > "${initdir}/etc/machine-id"
    fi
    chpasswd --root "$initdir" --crypt-method=NONE <<< 'root:'
    ln_r "${systemdutildir}/systemd" "/init"
    ln_r "${systemdutildir}/systemd" "/sbin/init"
    mkdir -p "${initdir}/etc/systemd/journal.conf.d/"
    inst "${moddir}/augment-journald.conf" "/etc/systemd/journal.conf.d/augment-journald.conf"
    mkdir -p "${initdir}/etc/systemd/network"
    inst "${moddir}/all-links-dhcp.network" "/etc/systemd/network/all-links-dhcp.network"
    mkdir -p "${initdir}/etc/systemd/system/getty@.service.d"
    inst "${moddir}/20-autologin-getty.conf" "/etc/systemd/system/getty@.service.d/20-autologin-getty.conf"
    mkdir -p "${initdir}/etc/systemd/system/serial-getty@.service.d"
    inst "${moddir}/20-autologin-serial-getty.conf" "/etc/systemd/system/serial-getty@.service.d/20-autologin-serial-getty.conf"
}
