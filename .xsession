~/.screenlayout/default.sh &
sxhkd &
feh --bg-fill source/voronoi/rotscr.png
urxvtd &
compton &
~/bin/flw.sh
~/bin/bar.sh | ~/source/bar/lemonbar -B '#77003399' &
exec windowchef
