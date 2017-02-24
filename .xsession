~/.screenlayout/default.sh &
sxhkd &
feh --bg-fill source/voronoi/rotscr.png
urxvtd &
compton -cb &
wew -m 2097152 | ~/bin/flw &
~/bin/bar_date.sh | ~/source/bar/lemonbar -g 190x+5+5 -B '#77003399' &
~/bin/bar_time.sh | ~/source/bar/lemonbar -g 90x+1505+5  -B '#77003399' &
exec windowchef
