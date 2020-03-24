#!/bin/bash

# dependencies
# dnf install git make gcc-c++ patch perl-ExtUtils-MakeMaker perl-Thread-Queue

# update all submodules
git submodule update

# the directory BR2_EXTERNAL holds all the stuff necessary for customizing the build
# this enforces a strict line between buildroot from source and our image config
# see https://buildroot.org/downloads/manual/manual.html#customize for more information
declare -x -r BR2_EXTERNAL="$PWD/BR2_EXTERNAL"

pushd buildroot || exit 1
make
