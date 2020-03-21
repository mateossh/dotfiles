export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export EDITOR=vim
export ANDROID_HOME=/opt/android-sdk
export GOPATH=$HOME/.go
export QT_DIR=/usr/include/qt
export PATH=$PATH:"$ANDROID_HOME/tools"
export PATH=$PATH:"$ANDROID_HOME/platform-tools"
export PATH=$PATH:"$ANDROID_HOME/emulator"
export PATH=$PATH:"$ANDROID_HOME/tools/bin"
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"/usr/bin/core_perl"
export PATH=$PATH:"$HOME/.gem/ruby/2.6.0/bin"
export PATH=$PATH:"$HOME/.scripts"
export PATH=$PATH:"$HOME/.npm/global-modules/bin"
export PATH=$PATH:"$HOME/.cask/bin"
export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"/usr/lib/go/bin"

ZSH_THEME="matt"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

magic-enter() {
    if [[ -z $BUFFER ]]; then
        echo ""
        if git rev-parse --is-inside-work-tree &>/dev/null; then
            git status -u .
        else
            l
        fi
        zle redisplay
    else
        zle accept-line
    fi
}

open-in-browser () {
    xdg-open .
}

# Find keybinds using `showkey -a`

# Ctrl+Backspace delete word
bindkey "^H" backward-delete-word
# Ctrl+Delete backwards delete word
bindkey "^[[3;5~" delete-word

# Enter runs `git status` in a git directory or `ls` in non-git directory
zle -N magic-enter
bindkey "^M" magic-enter

# ESC-Enter opens current folder in file browser
zle -N open-in-browser
bindkey "^[^M" open-in-browser
