# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
path+=('/opt/bin')
path+=('/usr/local/go/bin')
export PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set cache directory
ZSH_CACHE_DIR="$HOME/.cache/"

# load plugins
plugins=(
    apparix
    docker
    docker-compose
    git
    kubectl
    rust
    slugify
)

# load zsh completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# source .oh-my-zsh and custom files
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/geometry/geometry.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/variables.zsh

setopt noautoremoveslash
setopt nocaseglob
