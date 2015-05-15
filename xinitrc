#! /bin/bash

# caps lock -> esc
xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC

# lock screen
xautolock -time 10 -lockaftersleep -locker slimlock &

xrdb -merge ~/.Xresources

font pango:DejaVu Sans Mono, Terminus Bold Semi-Condensed 11

redshift &

exec i3

