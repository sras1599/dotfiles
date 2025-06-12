#!/usr/bin/zsh

# print IP addresses of servers defined in the ssh config file
servers() {
    local server_name="$1"
    
    # Parse ~/.ssh/config to get server names and IP addresses, excluding "github" entries
    if [[ -z "$server_name" ]]; then
        # If no argument is passed, print all server names and their IPs (excluding "github")
        awk '/^Host / {if ($2 !~ /github/ && $2 != "*") { host=$2 } } 
             /^ *HostName / { if (host != "") print host " " $2 }' ~/.ssh/config
    else
        # If a server name is passed, print only the IP address for that server (excluding "github")
        awk -v server="$server_name" '
            /^Host / { if ($2 == server && $2 !~ /github/ && $2 != "*") { found=1 } else { found=0 } } 
            found && /^ *HostName / { print $2; exit }' ~/.ssh/config
    fi
}
