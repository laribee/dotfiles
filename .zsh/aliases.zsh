# My aliases
alias restart='touch tmp/restart.txt'
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'

alias c="clear"
alias b="cd -"
alias h="cd ~"
alias x="logout"
alias work="cd ~/work/"

alias gs="git status"
alias gc="git commit"
alias gcm="git add -A . && git commit -am"
alias gr="git pull --rebase"
alias gp="git push"

alias r="rails"
alias g="git"
alias m="mvim"
alias be="bundle exec"
alias pryr="pry -r ./config/environment"

function gitdays {
  git log --author=laribee --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------"
}
