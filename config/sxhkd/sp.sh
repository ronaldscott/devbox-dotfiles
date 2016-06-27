#!/bin/sh

# sp.sh - terminal scratchpad in bspwm
# 
# sp.sh [CLASS] [CLASSNAME] [GEOMETRY]
#
# CLASS - the overall class for all scratchpads; e.g. 'termitesp'
# CLASSNAME - the classname for this specific instance, e.g. 'termitespw'
# GEOMETRY - the X11 geometry of the terminal window, WIDTHxHEIGHT[+-]XOFF[+-]YOFF
#
# Dependencies
# - bspwm, with a rule in bspwmrc similar to 'bspc rule -a [CLASS] state=floating'
#   (where CLASS) is the same CLASS value passed to sp.sh
# - termite
# - xdotool


xdotool search --onlyvisible --classname $2 windowunmap \
	|| xdotool search --classname $2 windowmap \
	|| termite --class=$1 --name=$2 --geometry=$3
