#/bin/bash

bar_time() {
    echo "$(date +"%I %M %S")"
}

while true; do
    echo "%{c}$(bar_time)"
    sleep 1
done
