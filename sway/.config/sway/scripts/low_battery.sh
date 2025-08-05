#!/bin/bash

while [ True ]; do
    up=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)
    percentage=$(echo $up | rg -oP 'percentage:\s+\K[0-9]+(?:\.[0-9]+)?(?=%)')
    state=$(echo $up | rg -oP 'state:\s+discharging')

    if [[ $percentage>30 || -z $state ]]; then
        sleep 800 
    elif [[ $percentage<15 && -n "$state" ]]; then
        notify-send --urgency critical "System" "Low battery!"
    fi

    sleep 60
done
