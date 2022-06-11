#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard Layout

# (basic layout is ok.)

# dwm status

dwmstatus 2>&1 >/dev/null &

# Display Resolution

xrandr --output eDP-1 --mode 1366x768 &

# redshift

exec redshift -l 7.0645451:125.6084371 &

# Loop

while true; do
	dwm >/dev/null 2>&1
done

# Window Manager

exec dwm

# Autostart desktop applications

exec brave-browser-nightly
exec st -e syncthing -no-browser
exec obsidian
exec thunar
exec github-desktop
