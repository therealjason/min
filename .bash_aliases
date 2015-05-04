alias cwget='wget --keep-session-cookies --load-cookies=cookies.txt --save-cookies=cookies.txt'
alias cls='clear'
alias syslog='sudo tail -100f /var/log/syslog'
alias messages='sudo tail -100f /var/log/messages'
export HISTSIZE=1000
export HISTFILESIZE=1000
HISTCONTROL=ignoredups
alias df='df -h'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# Alter the ls command
alias ll='ls --color --time-style="+%b %d %Y %H:%M"'
alias ls='ls -ac'
alias lls='ls -lac'
alias la="ls --color -lAGbh --time-style='+%b %d %Y %H:%M'"

# For nano editor
alias nano='nano -w'

alias mac='ifconfig | grep HWaddr'

export GREP_COLOR="1;33"
alias grep='grep --color=auto'

# perform 'ls' after 'cd' if successful.
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}

alias cd='cdls'

alias apt-install='sudo apt-get install'
alias apt-search='apt-cache search'
alias apt-show='apt-cache show'
alias apt-purge='sudo apt-get --purge  remove'
alias apt-remove='sudo apt-get remove'
alias apt-up="sudo apt-get update && sudo apt-get upgrade"
alias apt-policy="LANG=C apt-cache policy"


