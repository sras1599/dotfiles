ZSH_DISABLE_COMPFIX=true

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

# Load custom files from ~/.zshrc.d
CUSTOM_DIR="$HOME/.zshrc.d"
if [ -d "$CUSTOM_DIR" ]; then
    for file in "$CUSTOM_DIR"/*.zsh; do
        [ -f "$file" ] && source "$file"
    done
fi

# source .oh-my-zsh and custom files
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/geometry/geometry.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/variables.zsh

if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi

setopt noautoremoveslash
setopt nocaseglob

# Created by `pipx` on 2023-09-20 00:05:59
export PATH="$PATH:/home/raspreet/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
