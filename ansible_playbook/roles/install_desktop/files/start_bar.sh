#!/usr/bin/env sh

export DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

export BATTERY = $(ls -1 /sys/class/power_supply/ | tail -1)
export ADAPTER = $(ls -1 /sys/class/power_supply/ | head -1)

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar main &
