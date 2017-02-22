#!/bin/bash

# get window id
cw=$(pfw)

# show calendar
xterm -rv -geometry 22x9 +sb -e bash -c 'w=$(pfw); cal & waitron window_snap bottomright; sleep 2; killw "$w"'

# refocus
wtf "$cw"

