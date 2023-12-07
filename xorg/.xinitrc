#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
    setxkbmap -option caps:escape,shift:both_capslock
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
    setxkbmap -option caps:escape,shift:both_capslock
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]  ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Change resolution to 13in laptop
#

# xrandr--output eDP1 --mode 1366x768 &

# dwmstatus
#

# »dwmstatus 2>&1 >/dev/null &«

# dwmblocks-async
#

#dwmblocks &

# loop exit of dwm
#

while true; do
	dwm >/dev/null 2>&1
done

# Display clock in statusbar
#

while true; do

xsetroot -name "` date +"%R"`"

done &

# Start dwm
#

exec /usr/bin/dwm
