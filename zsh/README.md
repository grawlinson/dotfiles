# ZSH

*   oh-my-zsh. ([source][1])
*   zsh-completions plugin. ([source][2])

## Install

### ZSH

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

## Obsolete

Create a symlink for `.zlogin`

`ln -s ~/.dotfiles/zsh/zlogin ~/.zlogin`

Create a symlink for `ssh-agent.zsh`

`ln -s ~/.dotfiles/zsh/ssh-agent.zsh ~/.oh-my-zsh/custom/ssh-agent.zsh`

[1]: https://github.com/robbyrussell/oh-my-zsh
[2]: https://github.com/zsh-users/zsh-completions
