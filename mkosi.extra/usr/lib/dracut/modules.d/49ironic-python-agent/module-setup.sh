#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

function check() {
    return 0
}

function depends() {
    echo setup-ironic-python-agent
    return 0
}

function install() {
    while read -r file; do
        if test -d "$file"; then
            mkdir -p "${initdir}/${file}"
        fi
        inst "$file"
    done < <(find '/ipa')
    inst "${moddir}/ironic-python-agent.service" "${systemdsystemunitdir}/ironic-python-agent.service"
    systemctl -q --root "$initdir" enable ironic-python-agent.service
    return 0
}
