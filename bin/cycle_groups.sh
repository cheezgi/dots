#!/bin/bash

current_group=$(xprop -root | grep GROUPS | mawk '{print $3}')

if [ "$current_group" = "4" ]; then
    waitron group_activate_specific 1
else
    let "next = $current_group + 1"
    waitron group_activate_specific $next
fi

