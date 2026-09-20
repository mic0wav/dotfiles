set -g fish_greeting

starship init fish | source

# ls
alias ls='ls -F --group-directories=first'
alias l='ls -lhF --group-directories=first'
alias ll='ls -lah --group-directories=first'
alias la='ls -A --group-directories=first'
alias lm='ls -m --group-directories=first'
alias lr='ls -R --group-directories=first'
alias lg='ls -l --group-directories=first'
alias sl='ls -F --group-directories=first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

abbr -a g git

# tmux
alias t='tmux'
alias ta='tmux attach'

# general
alias c='clear'
alias q='exit'
alias v='hx'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias wal "awww img --transition-type any --transition-step 30"

set -gx EDITOR hx
set -gx VISUAL hx
