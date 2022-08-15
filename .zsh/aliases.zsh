alias runserver="poetry run python manage.py runserver"
alias shell="poetry run python -W ignore manage.py shell_plus --quiet-load --print-sql"

alias cpuhigh="echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias cpulow="echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias logout="pkill -KILL -u $USER"
