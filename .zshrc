# exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export COLORTERM="st-256color"
export LANG=en_US.UTF-8
export SAVEHIST=1000
export XDG_CONFIG_HOME=/home/niklas/.config
export XDG_CACHE_HOME=/home/niklas/.cache
export XDG_DATA_HOME=/home/niklas/.local/share
export HISTFILE="$XDG_CONFIG_HOME"/zsh/zsh_hist
export LESSHISTFILE=-
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
export IDEA_PROPERTIES="${XDG_CONFIG_HOME}"/intellij-idea/idea.properties
export IDEA_VM_OPTIONS="${XDG_CONFIG_HOME}"/intellij-idea/idea.vmoptions

# configure zsh
PROMPT='%B%F{red}%n%f%F{white}@%f%m%b %F{blue}%B%~%b%f %# '
autoload -Uz compinit colors
compinit
colors
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
bindkey -v # vim mode in zsh
unsetopt beep

# aliases
alias config='/usr/bin/git --git-dir=/home/niklas/.cfg/ --work-tree=/home/niklas'
alias hibernate="systemctl hibernate -i"
alias ls="ls --color=always"
alias less="less -r"
