.PHONY: help git lftp mpd ncmpcpp npm nvim ssh sway tmux urxvt wallpapers weechat zsh clean

.DEFAULT: help

help:
	@echo "all            > set up everything"
	@echo "git            > global git config & aliases"
	@echo "lftp           > sftp management"
	@echo "mpd            > music player daemon config"
	@echo "ncmpcpp        > ncurses mpc++ ui/colour settings & playlists"
	@echo "npm            > npm configuration (ha ha)"
	@echo "nvim           > neovim config & plugins"
	@echo "ssh            > safe-ish ssh config"
	@echo "sway           > minimal tiling wm for naughty computers"
	@echo "tmux           > tmux config"
	@echo "urxvt          > terminal colours & keyboard settings"
	@echo "wallpapers     > system wallpapers"
	@echo "weechat        > irc client ui/colour configuration"
	@echo "zsh            > shell, aliases and cool stuff"
	@echo ""
	@echo "            mostly, i'm just lazy"

all: git lftp mpd ncmpcpp npm nvim ssh sway tmux urxvt wallpapers weechat zsh

git:
	@stow -t ~/ --no-folding git

lftp:
	@stow -t ~/ --no-folding lftp

mpd:
	@stow -t ~/ --no-folding mpd

ncmpcpp:
	@stow -t ~/ --no-folding ncmpcpp

npm:
	@mkdir -p ~/.cache/npm ~/.local/share/npm
	@stow -t ~/ --no-folding npm

nvim:
	@stow -t ~/ --no-folding nvim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Run :PlugInstall when nvim is first run!"

ssh:
	@stow -t ~/ --no-folding ssh

sway:
	@stow -t ~/ --no-folding sway

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	@stow -t ~/ --no-folding tmux

urxvt:
	@stow -t ~/ --no-folding urxvt

wallpapers:
	@stow -t ~/ --no-folding wallpapers

weechat:
	@stow -t ~/ --no-folding weechat

zsh:
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
	@stow -t ~/ --no-folding zsh

clean:
	@stow -D git lftp npm nvim ssh sway tmux urxvt zsh
	@rm -rf ~/.config/git \
		~/.config/lftp ~/.local/share/lftp \
		~/.config/npm ~/.cache/npm ~/.local/share/npm \
		~/.config/nvim \
		~/.config/sway \
		~/.config/tmux \
		~/.config/weechat \
		~/.oh-my-zsh
