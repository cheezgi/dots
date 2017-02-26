
# ░▄▀▄▀░░░█░░░░▀▀█░█▀▀░█░█░█▀▄░█▀▀
# ░░░░░░▄▀░░░░░▄▀░░▀▀█░█▀█░█▀▄░█░░
# ░░░░░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀

export ZSH=/home/j/.oh-my-zsh

ZSH_THEME="zh"

HYPHEN_INSENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias nv="nvim"
alias x="exit"
alias gdb="gdb -q"

export EDITOR="/usr/local/bin/nvim"
export PATH="$PATH:/home/j/.cargo/bin"

unsetopt AUTO_CD

