
PROMPT='%{$fg_bold[cyan]%}  %c %{$reset_color%}'

alias l='ls -lhF'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
alias sl='ls'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

# general
alias c='clear'
alias q='exit'
alias v='nvim'

#zoxide
eval "$(zoxide init zsh)"
