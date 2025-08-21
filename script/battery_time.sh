#!/bin/bash

BAT_PATH="/sys/class/power_supply/BAT1"

if [ ! -d "$BAT_PATH" ]; then
  echo "Battery not found at $BAT_PATH"
  exit 1
fi

# Read current capacity and power usage
charge_now=$(cat "$BAT_PATH/charge_now" 2>/dev/null || cat "$BAT_PATH/energy_now")
charge_full=$(cat "$BAT_PATH/charge_full" 2>/dev/null || cat "$BAT_PATH/energy_full")
power_now=$(cat "$BAT_PATH/power_now" 2>/dev/null || cat "$BAT_PATH/current_now")

# If power_now is 0 or missing, we can't estimate
if [ -z "$power_now" ] || [ "$power_now" -eq 0 ]; then
  echo "Power usage info unavailable or battery is charging."
  exit 1
fi

# Calculate remaining time in hours and minutes
time_hours=$(echo "$charge_now / $power_now" | bc -l)

hours=$(echo "$time_hours" | cut -d. -f1)
minutes_fraction=$(echo "$time_hours - $hours" | bc -l)
minutes=$(echo "$minutes_fraction * 60" | bc -l | cut -d. -f1)

echo "Estimated battery time remaining: ${hours}h ${minutes}m"

