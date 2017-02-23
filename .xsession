~/.screenlayout/default.sh &
sxhkd &
feh --bg-fill source/voronoi/rotscr.png
urxvtd &
compton -cb &
wew -m 2097152 | ~/bin/flw > /tmp/flw.log &
~/bin/bar.sh | ~/source/bar/lemonbar -B '#77003399' &
exec windowchef
