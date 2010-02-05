# My aliases
alias ss='./script/server'
alias ss1='./script/server -p 3001'
alias sc='./script/console'
alias sg='./script/generate'
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

function gitdays {
  git log --author=laribee --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
}

# accepts a css file and compacts the delcarations to one line
function css_compact {
  cat $@ | css2sass | sass -t compact > $@
}

# hamlizes whatever is on the clipboard
function pbhaml {
  pbpaste | html2haml | pbcopy
}

function md {
  markdown.pl $@ > /tmp/generated_by_markdown.html; open /tmp/generated_by_markdown.html
}
