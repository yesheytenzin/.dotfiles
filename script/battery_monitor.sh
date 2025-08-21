#!/bin/bash

# Get current battery percentage (for BAT1 based on your system)
battery_percent=$(cat /sys/class/power_supply/BAT1/capacity)

# Get battery status (Charging/Discharging)
battery_status=$(cat /sys/class/power_supply/BAT1/status)

# Threshold for notification
threshold=20

# Only notify if battery is discharging and below or equal threshold
if [[ "$battery_status" == "Discharging" && "$battery_percent" -le $threshold ]]; then
    # Use notify-send to send a desktop notification
    notify-send -u critical -i battery-caution "Battery Low" "Battery level is at ${battery_percent}%! Please plug in your charger."
fi

