#!/bin/zsh

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

        # run popup script
        ~/bin/popup.sh $message
    fi
done

