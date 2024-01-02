if [ -z "$DISPLAY" ]; then
    exec startx
fi

export EDITOR=nano
