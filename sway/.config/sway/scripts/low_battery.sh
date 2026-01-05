#!/bin/bash

while [ True ]; do
    up=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

    percentage=$(echo $up | rg -oP 'percentage:\s+\K[0-9]+(?:\.[0-9]+)?(?=%)')
    percentage=$(($percentage+0))

    state=$(echo $up | rg -oP 'state:\s+discharging')

    if [[ $percentage<20 && -n "$state" ]]; then
        notify-send --urgency critical "Low battery!" "$percentage %"
    fi

    sleep 800 
done
