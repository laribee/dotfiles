function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/☭}/(main|viins)/Ⓐ }"
    zle reset-prompt
}

zle -N zle-keymap-select

VIMODE="Ⓐ "

PROMPT='$fg_bold[red]%}${VIMODE}% %{$fg_bold[green]%}%p %{$fg[white]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
