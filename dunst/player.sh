#!/bin/sh
# PlayerInfo

msgTag="playerinfo"
#iconPath="/usr/share/icons/Adwaita/32x32/legacy/"

while true; do
    metadata="$(playerctl metadata --format "{{ artist }} - {{ album }} - {{ title }}")"
    icon="$(playerctl metadata mpris:artUrl)"
    isPlaying="$(playerctl status)"

    if [ "$isPlaying" = "Playing" ]; then
        notify-send --icon "${icon}" "${metadata}"
    fi

    sleep 1
done
