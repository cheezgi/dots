#!/bin/zsh

# how long bar stays open
duration=4

# color of bar
bar_bg='#4265f4'

# bar position
bar_x='200'
bar_y='0'

# txtw: https://github.com/baskerville/txtw
# somewhat janky with default x font
# width of message for bar dimensions
width=$(txtw $1)

# set up bar geometry
# <width>x<height>+<x>+<y>
# use default height of whatever
geom="${width}x+${bar_x}+${bar_y}"

# show bar
( echo "%{c}$1"; sleep $duration ) | ~/source/bar/lemonbar -g $geom -B $bar_bg

