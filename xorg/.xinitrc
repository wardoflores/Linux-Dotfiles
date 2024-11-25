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

#Change resolution to 13in laptop
#
#Change resolution to 1920x1080 Monitor
#xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync &
#xrandr --addmode DP2 "1920x1080_60.00" &
#xrandr --output DP2 --mode "1920x1080_60.00" &

./repository/Terminal-Projects/1920x1080.sh &

# redshift
#

redshift -l "7.07306:125.61278" -b 1.0:0.5 -t 1000:25000 &

# dwmstatus
#
:q
»dwmstatus 2>&1 >/dev/null &«

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
