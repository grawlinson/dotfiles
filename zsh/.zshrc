# add ~/bin & /usr/local/bin to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh related directories
export ZSH=/usr/share/oh-my-zsh
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


# reduce linux syscalls
export TZ=:/etc/localtime

