# neovim (nvim)

Install [nvim][url-nvim] with [vim-plug][url-vim-plug] (plugin manager)

### Plugins

* [vim-airline][url-vim-airline]
* [vim-airline-plugins][url-vim-airline-plugins]
* [vim-monokai][url-vim-monokai]
* [vim-gitgutter][url-vim-gitgutter]

## Installation

```shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Configuration

`ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim`

`ln -s ~/.dotfiles/nvim/nvim.zsh ~/.oh-my-zsh/custom/nvim.zsh`

`nvim +PlugInstall +qall`

[url-nvim]:https://github.com/neovim/neovim
[url-vim-plug]:https://github.com/junegunn/vim-plug
[url-vim-airline]:https://github.com/vim-airline/vim-airline
[url-vim-airline-plugins]:https://github.com/vim-airline/vim-airline
[url-vim-monokai]:https://github.com/sickill/vim-monokai
[url-vim-gitgutter]:https://github.com/airblade/vim-gitgutter
