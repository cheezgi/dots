~/.screenlayout/default.sh &
sxhkd &
feh --bg-fill source/voronoi/rotscr.png
urxvtd &
compton -cb &
wew -m 2097152 | ~/bin/flw &
~/bin/bar.sh &
~/bin/notifications.sh &
exec windowchef
