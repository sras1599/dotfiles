#!/usr/bin/zsh

WATCH_SCRIPT_PROCESS_NAME="docker compose watch"

# Check if the watch script is already running
if ! pgrep -f "$WATCH_SCRIPT_PROCESS_NAME" > /dev/null; then
    ~/code/vsmaps/scripts/watch start /tmp/dcwatch.log
fi

alias dwatch="tail -fn0 /tmp/dcwatch.log"
