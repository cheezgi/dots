#!/bin/zsh

duration=3

barx=200
barw=400

bar_bg='#4265f4'

sind -f "%a:%s:%b" | while IFS=: read app sum desc; do
    if [ "$app" != " " ]; then
        message="$app"
        if [ "$sum" != " " ] && [ -n "$sum" ]; then
            message="$message - $sum"
        fi
        if [ "$desc" != " " ] && [ -n "$desc" ]; then
            message="$message - $desc"
        fi
        width=$(txtw $message)
        geom="${width}x+200+"
        ( echo "%{c}$message"; sleep $duration ) | ~/source/bar/lemonbar -g $geom -B $bar_bg
    fi
done

