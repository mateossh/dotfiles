export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export EDITOR=vim
export ANDROID_HOME=/opt/android-sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export GOPATH=$HOME/Go
export PATH="$PATH:$GOPATH/bin"
export PATH=$PATH:"/usr/bin/core_perl:/home/matt/.gem/ruby/2.4.0/bin:/home/matt/.scripts"

ZSH_THEME="matt"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

