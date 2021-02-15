#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT1/status)
LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)

LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)

if [[ $LEVEL -lt 20 ]] ; then
        if [[ "$STATUS" == "Charging" ]]; then
		killall rofi
	else 
		$HOME/.config/rofi/bin/menu_battery
	fi
fi
