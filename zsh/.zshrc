# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="ys" #powerlevel9k/powerlevel9k"

# Disable updates
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

# Plugins
plugins=(archlinux common-aliases git sudo ssh-agent rust colored-man-pages gpg-agent)

# ZSH-Completions
plugins+=(zsh-completions)
autoload -U compinit && compinit

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
