export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export EDITOR=vim

ZSH_THEME="honukai"
ENABLE_CORRECTION="true"

plugins=(git last-working-dir bower npm)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
