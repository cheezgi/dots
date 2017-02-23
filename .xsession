~/.screenlayout/default.sh &
sxhkd &
feh --bg-fill source/voronoi/rotscr.png
urxvtd &
compton &
wew -m 2097152 | ~/source/flw/flw > ~/flw.log &
~/bin/bar.sh | ~/source/bar/lemonbar -B '#77003399' &
exec windowchef
