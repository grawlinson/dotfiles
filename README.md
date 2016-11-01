# dotfiles & system setup

```
git            > global git config & aliases
lftp           > sftp management
mpd            > music player daemon config
ncmpcpp        > ncurses mpc++ ui/colour settings & playlists
npm            > npm configuration (ha ha)
nvim           > neovim config & plugins
ssh            > safe-ish ssh config
sway           > minimal tiling wm for naughty computers
tmux           > tmux config
urxvt          > terminal colours & keyboard settings
wallpapers     > system wallpapers
weechat        > irc client ui/colour configuration
zsh            > shell, aliases and cool stuff
```

`git clone git@github.com:grawlinson/dotfiles.git ~/.dotfiles`

Clone repository, then setup as desired.

Look at [Makefile](Makefile), or use [GNU Stow][url-gnu-stow] directly.

## Further Reading

*   [Mozilla OpenSSH security guidelines][url-mozilla-ssh]
*   [Good read on securing OpenSSH][url-secure-shell]


## LICENSE

The MIT License ([MIT](LICENSE.md))

[url-gnu-stow]:https://www.gnu.org/software/stow/
[url-mozilla-ssh]:https://wiki.mozilla.org/Security/Guidelines/OpenSSH
[url-secure-shell]:https://stribika.github.io/2015/01/04/secure-secure-shell.html
