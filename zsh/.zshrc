# add ~/bin & /usr/local/bin to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# OS detection
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    # Support for XDG Base Directories
    export XDG_DATA_HOME="${HOME}/.local/share"
    export XDG_CONFIG_HOME="${HOME}/.config"
    export XDG_CACHE_HOME="${HOME}/.cache"
    export XDG_RUNTIME_DIR="/tmp"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Linux/GNU
    # reduce linux syscalls
    export TZ=:/etc/localtime

    # Path to your oh-my-zsh installation.
    export ZSH=/usr/share/oh-my-zsh
else
    printf "Unknown OS detected: %s\n" "$OSTYPE"
fi

# oh-my-zsh related directories
export ZSH_CACHE_DIR=$XDG_CACHE_HOME/oh-my-zsh
export ZSH_CUSTOM=$XDG_CONFIG_HOME/oh-my-zsh/custom

# create cache & plugin directories if they don't exist
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir -p $ZSH_CACHE_DIR
fi
if [[ ! -d $ZSH_CUSTOM ]]; then
  mkdir -p $ZSH_CUSTOM
fi

# disable automatic updates
DISABLE_AUTO_UPDATE=true

# theme
ZSH_THEME="ys"

# plugins
plugins=(
    ripgrep
    git
    sudo
)

# zsh-completions
autoload -U compinit && compinit

# source omz
source $ZSH/oh-my-zsh.sh

