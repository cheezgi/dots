#!/bin/bash

# get current window ID
cw=$(pfw)

# show tty-clock for 2 seconds and close
xterm -rv -geometry 38x10 +sb -e bash -c 'w=$(pfw); tty-clock -nt & waitron window_snap bottomright; sleep 2; killw "$w"'

# re-focus last window
wtf "$cw"

