alias cpuhigh="echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias cpulow="echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias logout="pkill -KILL -u $USER"

alias ungit="rm -rf .git .github"

alias copy="xclip -se c"

alias dvo="devcontainer open"

alias sus="systemctl suspend -i"

alias ts="tmuxinator start"
