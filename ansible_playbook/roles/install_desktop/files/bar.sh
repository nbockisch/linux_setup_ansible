#!/bin/sh

# Set colors
. "${HOME}/.cache/wal/colors.sh"

Connection() {
	CON=""
}

Volume() {
	VOL=$(amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]' | tail -1)
	echo -n "%{F$color1}奄%{F-}" "%{F$color7}%$VOL%{F-}"
}

Brightness() {
	BRIGHT=$(xrandr --verbose | grep Brightness | awk '{print $2}' | tail -1)
	echo -n "%{F$color1}%{F-}" "%{F$color7}%$BRIGHT%{F-}"
}

Date() {
	DATE=$(date '+%b %d, %Y')
	echo -n "%{F$color1}类%{F-}" "%{F$color7}$DATE%{F-}"
}

Clock() {
        TIME=$(date '+%I:%M %p')
        echo -n "%{F$color1}%{F-}" "%{F$color7}$TIME%{F-}"
}

Battery() {
	BATCHARGE=$(acpi | grep Discharging)
        BATPERC=$(acpi --battery | cut -d, -f2)
	if [ "$BATPERC" == "" ]; then
		echo ""
	else
		if [ "$BATCHARGE" == "" ]; then	
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		elif [ "$BATPERC" -le "20" ]; then
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		elif [ "$BATPERC" -le "40" ]; then
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		elif [ "$BATPERC" -le "60" ]; then
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		elif [ "$BATPERC" -le "80" ]; then
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		elif [ "$BATPERC" -le "100" ]; then
			echo -n "%{F$color1}%{F-}" "%{F$color7}%$BATPERC%{F-}"
		fi
	fi
}

SEP2="  "

while [[ $(pidof bspwm) > 1 ]]; do
	echo "%{c}%{B$background}%{F$color7}$SEP2$(Clock)$SEP2$(Volume)$SEP2$(Brightness)$SEP2$(Battery)$SEP2$SEP2%{F-}%{B-}"
	sleep 0.1s
done
