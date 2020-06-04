#!/bin/bash
# vim: expandtab:smarttab:sw=4:ts=4:ft=sh

# https://www.man7.org/linux/man-pages/man7/dracut.modules.7.html
function check() {
    return 0
}

function install() {
    # files from rpm:ncurses-base
    inst /etc/terminfo
    inst /usr/share/tabset
    inst /usr/share/tabset/std
    inst /usr/share/tabset/stdcrt
    inst /usr/share/tabset/vt100
    inst /usr/share/tabset/vt300
    inst /usr/share/terminfo
    inst /usr/share/terminfo/A
    inst /usr/share/terminfo/A/Apple_Terminal
    inst /usr/share/terminfo/E
    inst /usr/share/terminfo/E/Eterm
    inst /usr/share/terminfo/E/Eterm-256color
    inst /usr/share/terminfo/E/Eterm-88color
    inst /usr/share/terminfo/E/Eterm-color
    inst /usr/share/terminfo/a
    inst /usr/share/terminfo/a/ansi
    inst /usr/share/terminfo/a/ansi80x25
    inst /usr/share/terminfo/a/ansis
    inst /usr/share/terminfo/a/aterm
    inst /usr/share/terminfo/b
    inst /usr/share/terminfo/b/bterm
    inst /usr/share/terminfo/c
    inst /usr/share/terminfo/c/cons25
    inst /usr/share/terminfo/c/cygwin
    inst /usr/share/terminfo/d
    inst /usr/share/terminfo/d/dumb
    inst /usr/share/terminfo/e
    inst /usr/share/terminfo/e/eterm
    inst /usr/share/terminfo/e/eterm-color
    inst /usr/share/terminfo/g
    inst /usr/share/terminfo/g/gnome
    inst /usr/share/terminfo/g/gnome-256color
    inst /usr/share/terminfo/h
    inst /usr/share/terminfo/h/hurd
    inst /usr/share/terminfo/j
    inst /usr/share/terminfo/j/jfbterm
    inst /usr/share/terminfo/k
    inst /usr/share/terminfo/k/kon
    inst /usr/share/terminfo/k/kon2
    inst /usr/share/terminfo/k/konsole
    inst /usr/share/terminfo/k/konsole-256color
    inst /usr/share/terminfo/l
    inst /usr/share/terminfo/l/linux
    inst /usr/share/terminfo/m
    inst /usr/share/terminfo/m/mach
    inst /usr/share/terminfo/m/mach-bold
    inst /usr/share/terminfo/m/mach-color
    inst /usr/share/terminfo/m/mach-gnu
    inst /usr/share/terminfo/m/mach-gnu-color
    inst /usr/share/terminfo/m/mlterm
    inst /usr/share/terminfo/m/mrxvt
    inst /usr/share/terminfo/n
    inst /usr/share/terminfo/n/nsterm
    inst /usr/share/terminfo/n/nsterm-256color
    inst /usr/share/terminfo/n/nxterm
    inst /usr/share/terminfo/p
    inst /usr/share/terminfo/p/pcansi
    inst /usr/share/terminfo/p/putty
    inst /usr/share/terminfo/p/putty-256color
    inst /usr/share/terminfo/r
    inst /usr/share/terminfo/r/rxvt
    inst /usr/share/terminfo/r/rxvt-16color
    inst /usr/share/terminfo/r/rxvt-256color
    inst /usr/share/terminfo/r/rxvt-88color
    inst /usr/share/terminfo/r/rxvt-basic
    inst /usr/share/terminfo/r/rxvt-color
    inst /usr/share/terminfo/r/rxvt-cygwin
    inst /usr/share/terminfo/r/rxvt-cygwin-native
    inst /usr/share/terminfo/r/rxvt-unicode
    inst /usr/share/terminfo/r/rxvt-xpm
    inst /usr/share/terminfo/s
    inst /usr/share/terminfo/s/screen
    inst /usr/share/terminfo/s/screen-16color
    inst /usr/share/terminfo/s/screen-256color
    inst /usr/share/terminfo/s/screen.Eterm
    inst /usr/share/terminfo/s/screen.gnome
    inst /usr/share/terminfo/s/screen.konsole
    inst /usr/share/terminfo/s/screen.konsole-256color
    inst /usr/share/terminfo/s/screen.linux
    inst /usr/share/terminfo/s/screen.mlterm
    inst /usr/share/terminfo/s/screen.mlterm-256color
    inst /usr/share/terminfo/s/screen.mrxvt
    inst /usr/share/terminfo/s/screen.putty
    inst /usr/share/terminfo/s/screen.putty-256color
    inst /usr/share/terminfo/s/screen.rxvt
    inst /usr/share/terminfo/s/screen.teraterm
    inst /usr/share/terminfo/s/screen.vte
    inst /usr/share/terminfo/s/screen.vte-256color
    inst /usr/share/terminfo/s/screen.xterm-256color
    inst /usr/share/terminfo/s/screen.xterm-new
    inst /usr/share/terminfo/s/screen.xterm-r6
    inst /usr/share/terminfo/s/screen.xterm-xfree86
    inst /usr/share/terminfo/s/st
    inst /usr/share/terminfo/s/st-16color
    inst /usr/share/terminfo/s/st-256color
    inst /usr/share/terminfo/s/stterm
    inst /usr/share/terminfo/s/stterm-16color
    inst /usr/share/terminfo/s/stterm-256color
    inst /usr/share/terminfo/s/sun
    inst /usr/share/terminfo/s/sun1
    inst /usr/share/terminfo/s/sun2
    inst /usr/share/terminfo/t
    inst /usr/share/terminfo/t/teraterm
    inst /usr/share/terminfo/t/teraterm2.3
    inst /usr/share/terminfo/t/tmux
    inst /usr/share/terminfo/t/tmux-256color
    inst /usr/share/terminfo/v
    inst /usr/share/terminfo/v/vs100
    inst /usr/share/terminfo/v/vt100
    inst /usr/share/terminfo/v/vt100-am
    inst /usr/share/terminfo/v/vt100-nav
    inst /usr/share/terminfo/v/vt102
    inst /usr/share/terminfo/v/vt200
    inst /usr/share/terminfo/v/vt220
    inst /usr/share/terminfo/v/vt52
    inst /usr/share/terminfo/v/vte
    inst /usr/share/terminfo/v/vte-256color
    inst /usr/share/terminfo/v/vwmterm
    inst /usr/share/terminfo/w
    inst /usr/share/terminfo/w/wsvt25
    inst /usr/share/terminfo/w/wsvt25m
    inst /usr/share/terminfo/x
    inst /usr/share/terminfo/x/xfce
    inst /usr/share/terminfo/x/xterm
    inst /usr/share/terminfo/x/xterm-1002
    inst /usr/share/terminfo/x/xterm-1003
    inst /usr/share/terminfo/x/xterm-1005
    inst /usr/share/terminfo/x/xterm-1006
    inst /usr/share/terminfo/x/xterm-16color
    inst /usr/share/terminfo/x/xterm-24
    inst /usr/share/terminfo/x/xterm-256color
    inst /usr/share/terminfo/x/xterm-88color
    inst /usr/share/terminfo/x/xterm-8bit
    inst /usr/share/terminfo/x/xterm-basic
    inst /usr/share/terminfo/x/xterm-bold
    inst /usr/share/terminfo/x/xterm-color
    inst /usr/share/terminfo/x/xterm-direct
    inst /usr/share/terminfo/x/xterm-direct2
    inst /usr/share/terminfo/x/xterm-hp
    inst /usr/share/terminfo/x/xterm-new
    inst /usr/share/terminfo/x/xterm-nic
    inst /usr/share/terminfo/x/xterm-noapp
    inst /usr/share/terminfo/x/xterm-old
    inst /usr/share/terminfo/x/xterm-pcolor
    inst /usr/share/terminfo/x/xterm-r5
    inst /usr/share/terminfo/x/xterm-r6
    inst /usr/share/terminfo/x/xterm-sco
    inst /usr/share/terminfo/x/xterm-sun
    inst /usr/share/terminfo/x/xterm-utf8
    inst /usr/share/terminfo/x/xterm-vt220
    inst /usr/share/terminfo/x/xterm-vt52
    inst /usr/share/terminfo/x/xterm-x10mouse
    inst /usr/share/terminfo/x/xterm-x11hilite
    inst /usr/share/terminfo/x/xterm-x11mouse
    inst /usr/share/terminfo/x/xterm-xf86-v32
    inst /usr/share/terminfo/x/xterm-xf86-v33
    inst /usr/share/terminfo/x/xterm-xf86-v333
    inst /usr/share/terminfo/x/xterm-xf86-v40
    inst /usr/share/terminfo/x/xterm-xf86-v43
    inst /usr/share/terminfo/x/xterm-xf86-v44
    inst /usr/share/terminfo/x/xterm-xfree86
    inst /usr/share/terminfo/x/xterm-xi
    inst /usr/share/terminfo/x/xterms
    # files from rpm:ncurses-libs
    inst /usr/lib64/libform.so.6
    inst /usr/lib64/libform.so.6.1
    inst /usr/lib64/libformw.so.6
    inst /usr/lib64/libformw.so.6.1
    inst /usr/lib64/libmenu.so.6
    inst /usr/lib64/libmenu.so.6.1
    inst /usr/lib64/libmenuw.so.6
    inst /usr/lib64/libmenuw.so.6.1
    inst /usr/lib64/libncurses.so.6
    inst /usr/lib64/libncurses.so.6.1
    inst /usr/lib64/libncursesw.so.6
    inst /usr/lib64/libncursesw.so.6.1
    inst /usr/lib64/libpanel.so.6
    inst /usr/lib64/libpanel.so.6.1
    inst /usr/lib64/libpanelw.so.6
    inst /usr/lib64/libpanelw.so.6.1
    inst /usr/lib64/libtic.so.6
    inst /usr/lib64/libtic.so.6.1
    inst /usr/lib64/libtinfo.so.6
    inst /usr/lib64/libtinfo.so.6.1
    # files from rpm:ncurses
    inst captoinfo
    inst clear
    inst infocmp
    inst infotocap
    inst reset
    inst tabs
    inst tic
    inst toe
    inst tput
    inst tset
}
