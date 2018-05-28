# add ~/bin & /usr/local/bin to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# location of oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="ys"

# automatically update oh-my-zsh without being prompted
DISABLE_UPDATE_PROMPT=true

# plugins
plugins=(
    common-aliases
    git
    sudo
    gpg-agent
    ssh-agent
    docker
)

# zsh-completions
autoload -U compinit && compinit

# source omz
source $ZSH/oh-my-zsh.sh

# increase zsh history
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# reduce linux syscalls
export TZ=:/etc/localtime

# ensure system is aware of browser/editor preference
export BROWSER="firefox-nightly"
export EDITOR="nvim"
