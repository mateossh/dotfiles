local current_dir='${PWD/#$HOME/~}'

PROMPT="%n\
%{$fg[white]%} :: \
%{$fg[yellow]%}${current_dir} \
%{$reset_color%}%(!.#.$) "

# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'