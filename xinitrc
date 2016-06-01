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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# merge in user defaults and keymaps last in case anything in 
# /etc/X11/xinit/xinitrc.d would override them

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

/usr/bin/VBoxClient-all

ruby ~/.config/lemonbar/bar.rb | lemonbar -b -d -B "#333333" -f "Roboto Mono Medium:size=11" -f "Font Awesome:size=11" | sh &
sxhkd &
exec bspwm