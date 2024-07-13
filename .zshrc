# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.cargo/env"
export PATH="$PATH:$HOME/.local/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
alias python="python3"
alias gomodvendor="go mod verify && go mod tidy && go mod vendor"

bindkey -s ^f "fuzzy_finder\n"
bindkey -s ^s "~/.local/scripts/tmux-cht.sh\n"
