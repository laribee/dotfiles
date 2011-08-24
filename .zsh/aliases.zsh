# My aliases
alias ss='./script/rails server'
alias ss1='./script/rails server -p 3001'
alias sc='./script/rails console'
alias sg='./script/rails generate'
alias restart='touch tmp/restart.txt'
alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'
alias gvim='mvim -p'
alias rebase='git fetch; git rebase origin/master'
alias extip='curl icanhazip.com'

alias c="clear"
alias b="cd -"
alias h="cd ~"
alias dir="ls -aF"
alias x="logout"
alias work="cd ~/work/"

alias gs="git status"
alias gc="git commit -a"
alias gcm="git commit -am"
alias gp="git push"

alias r="rails"
alias g="git"

function gitdays {
  git log --author=laribee --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
}
