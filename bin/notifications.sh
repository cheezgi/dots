#!/bin/zsh

# how long bar stays open
duration=4

# color of bar
bar_bg='#4265f4'

# bar position
bar_x='200'
bar_y='0'

# sind: https://github.com/htylo/simplenotifydaemon
# custom format: appname:summary:description
# the default format is kind of weird
sind -f "%a:%s:%b" | while IFS=: read app sum desc; do
    # sometimes sind emits an empty line
    if [ "$app" != " " ]; then
        # message to send to bar
        message="$app"
        if [ "$sum" != " " ] && [ -n "$sum" ]; then
            message="$message - $sum"
        fi
        if [ "$desc" != " " ] && [ -n "$desc" ]; then
            message="$message - $desc"
        fi
        # txtw: https://github.com/baskerville/txtw
        # somewhat janky with default x font
        # width of message for bar dimensions
        width=$(txtw $message)
        # set up bar geometry
        # <width>x<height>+<x>+<y>
        # use default height of whatever
        geom="${width}x+${bar_x}+${bar_y}"
        ( echo "%{c}$message"; sleep $duration ) | ~/source/bar/lemonbar -g $geom -B $bar_bg
    fi
done

