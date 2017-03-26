# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="ys"

# disable omz updates
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

# plugins
plugins=(archlinux common-aliases git sudo ssh-agent rust colored-man-pages gpg-agent web-search)

# zsh-completions
autoload -U compinit && compinit

# add ~/bin and /usr/local/bin to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# source omz
source $ZSH/oh-my-zsh.sh

# increase zsh history
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# reduce linux syscalls
export TZ=:/etc/localtime
