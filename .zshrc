eval "$(starship init zsh)"


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

# tmux
alias t='tmux'
alias ta='tmux attach'

# general
alias c='clear'
alias q='exit'
alias v='hx'
alias bat='cat /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0A:00/power_supply/BAT0/capacity'

export EDITOR=hx
export VISUAL=hx
