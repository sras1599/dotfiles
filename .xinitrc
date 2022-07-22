#!/bin/sh

# overrides
# turn off screensaver and energy star (dpms)
xset s off
xset -dpms

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession
