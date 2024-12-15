# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
export PATH="$PATH:/opt/nvim-linux64/bin"
export SUDO_EDITOR="nvim"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# bindkey -s ^f "fuzzy_finder\n"
# bindkey -s ^s "~/.local/scripts/tmux-cht.sh\n"

# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)

