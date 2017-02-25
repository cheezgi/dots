#!/bin/bash

# show tty-clock for 2 seconds and close
xterm -rv -geometry 38x10 +sb -e bash -c 'tty-clock -nt & waitron window_snap bottomright; sleep 2'

#~/bin/popup.sh "$(date +"%l %_M %p")"

