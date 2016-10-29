.PHONY: help git lftp npm nvim ssh sway tmux urxvt wallpapers zsh clean

.DEFAULT: help

help:
	@echo "all            > set up everything"
	@echo "git            > global git config & aliases"
	@echo "lftp           > sftp management"
	@echo "npm            > npm configuration (ha ha)"
	@echo "nvim           > neovim config & plugins"
	@echo "ssh            > safe-ish ssh config"
	@echo "sway           > minimal tiling wm for naughty computers"
	@echo "tmux           > tmux config"
	@echo "urxvt          > terminal colours & keyboard settings"
	@echo "wallpapers     > system wallpapers"
	@echo "zsh            > shell, aliases and cool stuff"
	@echo ""
	@echo "            mostly, i'm just lazy"

all: git lftp npm nvim ssh sway tmux urxvt wallpapers zsh

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

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	@stow -t ~/ tmux

urxvt:
	@stow -t ~/ urxvt

wallpapers:
	@stow -t ~/ wallpapers

zsh:
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
	@stow -t ~/ zsh

clean:
	@stow -D git lftp npm nvim ssh sway tmux urxvt zsh
	@rm -rf ~/.config/git \
		~/.config/lftp ~/.local/share/lftp \
		~/.config/npm ~/.cache/npm ~/.local/share/npm \
		~/.config/nvim \
		~/.config/sway \
		~/.config/tmux \
		~/.oh-my-zsh
