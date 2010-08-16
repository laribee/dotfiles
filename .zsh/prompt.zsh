parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\/git:\1/'
}

#parse_git_pair() {
#  if [[ parse_git_branch == "" ]]; then
#    git config --get user.name
#  fi
#}
 
# Put the string "hostname::/full/directory/path" in the title bar:
set_term_title() { 
	echo -ne "\e]2;$PWD\a" 
}

# Put the parentdir/currentdir in the tab
set_term_tab() {
	echo -ne "\e]1;$PWD:h:t/$PWD:t\a" 
}

set_running_app() {
 printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a"
}

precmd() { 
	set_term_title
	set_term_tab
}

preexec() { 
  set_running_app
}

postexec() {
  set_running_app
}

# If I am using vi keys, I want to know what mode I'm currently using.
# zle-keymap-select is executed every time KEYMAP changes.
# From http://zshwiki.org/home/examples/zlewidgets
function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/(vi)~}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-keymap-select

export PS1='%{$reset_color$fg[gray]%}%1~$VIMODE%{$reset_color$bold_color$fg[green]%}%{$reset_color$fg[green]%}$(parse_git_branch)>%{$reset_color%} '
