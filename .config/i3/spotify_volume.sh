#! /usr/bin/env bash

SPOTIFY_SINK=$(pacmd list-sink-inputs | grep -B 20 "application.name = \"Spotify\"" | awk '/index/ {print $NF}')

if [ -n "$SPOTIFY_SINK" ]; then
    pactl set-sink-input-volume "$SPOTIFY_SINK" "$1" >/dev/null
fi
