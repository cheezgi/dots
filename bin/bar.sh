#/bin/bash


bar_time() {
    echo "$(date +"%I %M %S")"
}

while true; do
    echo "%{l} $(bar_date)%{r}$(bar_time) "
    sleep 0.2
done

