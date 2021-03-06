# dotfiles
🔥Brand new dotfiles. Still hot!  
Yes, this is minimalist on purpose.

## Setup
I use
- *zsh* as my shell,
- *bspwm* with *sxhkd* for window management,
- *st* as terminal emulator,
- *vim* (what else) for editing files,
- *vifm* as a file browser.

## How to clone
This section and the next one are mostly for me to remember how to [set this up correctly](https://www.atlassian.com/git/tutorials/dotfiles).

Put this alias into your *.zshrc* and define it in the currently running shell:  
`echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> .zshrc`  
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

Next, to avoid some weird recursion:  
`echo ".cfg" >> .gitignore`

Clone and disable showing untracked files for this repo:  
`git clone --bare https://github.com/niklasbuehler/dotfiles.git $HOME/.cfg`  
`config config --local status.showUntrackedFiles no`

Finally, apply the dotfiles. This might give an error if there are config files that would be overwritten. Just follow the steps described in the error message.  
`config checkout`

## Usage
```config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push

config pull
config checkout
