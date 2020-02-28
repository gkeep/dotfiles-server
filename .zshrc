export ZSH="/home/gkeep/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  command-not-found
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export TERM="xterm-256color"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
