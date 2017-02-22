#/bin/bash

bar_date() {
    echo $(date +"%A %b %e %Y-%m-%d")
}

bar_time() {
    echo $(date +"%I %M %S")
}

while true; do
    echo "%{l} $(bar_date)%{c}$(wname $(pfw))%{r}$(bar_time) "
    sleep 0.2
done
