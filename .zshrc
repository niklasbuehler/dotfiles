# exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export COLORTERM="st-256color"
export LANG=en_US.UTF-8

# configure zsh
PROMPT='%B%F{red}%n%f%F{white}@%f%m%b %F{blue}%B%~%b%f %# '
autoload -Uz compinit colors
compinit
colors
zstyle ':completion:*' menu select
bindkey -v # vim mode in zsh
unsetopt beep

# aliases
alias config='/usr/bin/git --git-dir=/home/niklas/.cfg/ --work-tree=/home/niklas'
alias hibernate="systemctl hibernate -i"
alias ls="ls --color=auto"
