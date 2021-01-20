# exports
export PATH=$HOME/bin:$HOME/go/bin:/usr/local/bin:$PATH:$HOME/repos/flutter/bin
export COLORTERM="st-256color"
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=/home/niklas/.config
export XDG_CACHE_HOME=/home/niklas/.cache
export XDG_DATA_HOME=/home/niklas/.local/share
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
export HISTFILE="$XDG_CONFIG_HOME"/zsh/zsh_hist
export LESSHISTFILE=-
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_HOME=$HOME/Android/Sdk
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
export IDEA_PROPERTIES="${XDG_CONFIG_HOME}"/intellij-idea/idea.properties
export IDEA_VM_OPTIONS="${XDG_CONFIG_HOME}"/intellij-idea/idea.vmoptions
export EDITOR="vim"

# configure system
#loadkeys -C $HOME/.config/kbd/compose.inc

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
alias btcon="sudo systemctl start bluetooth; bluetoothctl power on; bluetoothctl connect F0:EF:86:BC:AD:FB"
alias t="date +%H:%M"
alias thymelog='/home/niklas/Documents/thymelogs/show.sh'
