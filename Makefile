.PHONY: help git lftp npm nvim ssh sway urxvt zsh clean

.DEFAULT: help

help:
	@echo "all       # Sets up everything"
	@echo "git       # Sets up default git config"
	@echo "lftp      # Set up lftp"
	@echo "npm       # Set up npm"
	@echo "nvim      # Sets up neovim"
	@echo "ssh       # Set up ssh"
	@echo "sway      # Set up sway"
	@echo "urxvt     # Set up urxvt"
	@echo "zsh       # Set up zsh"
	@echo "clean     # deletes absolutely everything"
	@echo ""
	@echo "           mostly, i'm just lazy"

all: git lftp npm nvim ssh sway urxvt zsh

git:
	@stow -t ~/ git

lftp:
	@stow -t ~/ lftp

npm:
	@mkdir -p ~/.cache/npm ~/.local/share/npm
	@stow -t ~/ npm

nvim:
	@stow -t ~/ nvim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Run :PlugInstall when nvim is first run!"

ssh:
	@stow -t ~/ ssh

sway:
	@stow -t ~/ sway

urxvt:
	@stow -t ~/ urxvt

zsh:
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	@stow -t ~/ zsh

clean:
	@stow -D git lftp npm nvim ssh sway urxvt zsh
	@rm -rf ~/.config/git \
		~/.config/lftp ~/.local/share/lftp \
		~/.config/npm ~/.cache/npm ~/.local/share/npm \
		~/.config/nvim \
		~/.config/sway \
		~/.oh-my-zsh
