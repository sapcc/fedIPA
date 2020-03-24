#!/bin/bash

# dependencies
# dnf install git make gcc-c++ patch perl-ExtUtils-MakeMaker perl-Thread-Queue

# get current buildroot release
# buildroot is released every three months: 02, 05, 08, 11
# as we don't know when in the month the release will be, we just check the next month
function get_current_buildroot_release() {
    local -i year
    local -i month
    # pad the array to make it basically 1-based for easier datetime operation (there is no 0th month)
    local -r -a month_to_release=(0 11 11 2 2 2 5 5 5 8 8 8 11)
    # `-1` means `now()`
    year="$(printf '%(%Y)T' '-1')"
    month="$(printf '%(%-m)T' '-1')"
    # in january and february we use the november release from last year
    if ((month <= 2)); then
        year+=-1
    fi
    printf '%i.%02i.x' "$year" "${month_to_release[$month]}"
    return 0
}

# the directory BR2_EXTERNAL holds all the stuff necessary for customizing the build
# this enforces a strict line between buildroot from source and our image config
# see https://buildroot.org/downloads/manual/manual.html#customize for more information
declare -x -r BR2_EXTERNAL="$PWD/BR2_EXTERNAL"

declare buildroot_release
buildroot_release="$(get_current_buildroot_release)"
declare -r buildroot_release

git clone --depth=1 --branch="$buildroot_release" --single-branch git://git.busybox.net/buildroot
cp buildroot.config buildroot/.config
pushd buildroot || exit 1
make
