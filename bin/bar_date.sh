#/bin/bash

bar_date() {
    echo "$(date +"%A %b %e %Y-%m-%d")"
}

while true; do
    echo "%{c}$(bar_date)"
    sleep 10m
done

