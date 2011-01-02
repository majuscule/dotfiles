# Prompt
export PS1="\[\e[1;47m\]\u@fexceo\[\e[33m\]\w\$ \[\e[0m\]"
export EDITOR="vim"

# Set bash mode to vi
set -o vi

alias v='vim'
alias vi='vim'
alias cd..='cd ..'
alias ..='cd ..'
alias cl='clear'
alias ll='ls -al --group-directories-first'
alias s='grep -i'
alias sd='ls -a --group-directories-first | grep -i'
alias p='ps u'
alias sp='ps aux | grep -i'
alias sh='history | grep -i'
alias cl='clear'
alias apts='apt-cache search'
alias aptsh='apt-cache show'
alias apti='sudo apt-get install'
alias aptu='sudo apt-get update'
alias grab='wget --convert-links --recursive --page-requisites --background --quiet --no-parent --directory-prefix=/var/www'
alias py='python'
alias bat='acpi'

# Git
alias gits='git status'
alias pushall='for i in `git remote`; do git push $i; done;'
alias pullall='for i in `git remote`; do git pull $i; done;'
alias gitgrab='git clone'
function githubgrab() {
  git clone git@github.com:$1;
}

# Leading to scripts
alias upload='python ~/scripts/cloud/upload.py'
alias tellserv='python ~/scripts/cloud/tellserv.py'
alias grabmyfavs='python ~/scripts/youtube_backup/youtube_backup.py'

# Make directory, cd into it
function md {
  mkdir -p "$1" && cd "$1"
  }

# Easy unpacking
unp() {
  if [ x == x$1 ]; then
    echo 'usage: unp [filename]'
  elif [ -f "$1" ]; then
    case "$1" in
      *.tar.gz) tar xvzf "$1" ;;
      *.tgz) tar xvzf "$1" ;;
      *.tar.bz2) tar xvjf "$1" ;;
      *.gz) gunzip "$1" ;;
      *.bz2) bunzip2 "$1" ;;
      *.tar) tar zvf "$1" ;;
      *.zip|*.egg|*.jar) unzip "$1" ;;
      *) echo "'$1' is an unknown archive" ;;
    esac
  else
    echo "'$1' is not a valid archive"
  fi
}
