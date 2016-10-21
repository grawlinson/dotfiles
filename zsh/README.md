# ZSH

*   oh-my-zsh. ([source][1])
*   zsh-completions plugin. ([source][2])

## Install

### Main package

`pacman -S zsh`

`chsh -s /bin/zsh`

### oh-my-zsh

`git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`

### zsh-completions plugin

`git clone https://github.com/zsh-users/zsh-completions
 ~/.oh-my-zsh/custom/plugins/zsh-completions`

## Configuration

`ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc`

### Custom ZSH config

`ln -s ~/.dotfiles/zsh/alert.zsh ~/.oh-my-zsh/custom/alert.zsh`

`ln -s ~/.dotfiles/zsh/steam.zsh ~/.oh-my-zsh/custom/steam.zsh`

[1]: https://github.com/robbyrussell/oh-my-zsh
[2]: https://github.com/zsh-users/zsh-completions
