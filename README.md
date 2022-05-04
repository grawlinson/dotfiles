# dotfiles

```
alacritty      > yet another terminal emulator
archlinux      > just makepkg.conf for now
bin            > helpful shell scripts
darktable      > mostly just filters
git            > global git config & aliases
gnupg          > utilise gpg-agent for pgp crypto
lftp           > sftp management
mail           > mail config - mutt/mbsync/notmuch
mpv            > who needs vlc? minimal video player
music          > music config - mpd, ncmpcpp, beets
npm            > npm configuration (ha ha)
nvim           > neovim config & plugins
ssh            > safe-ish ssh config
sway           > minimal tiling wm for naughty computers
termite        > terminal colours & keyboard settings
tmux           > tmux config
weechat        > irc client ui/colour configuration
zsh            > shell, aliases and cool stuff
```

`git clone https://github.com/grawlinson/dotfiles.git ~/.dotfiles`

Clone repository, then setup as desired using [GNU Stow][url-gnu-stow].
I prefer using the `--no-folding` flag with `stow`.

## Caveats

These dotfiles assume the computer is set up in a specific way. I recommend
using Ansible or other tools (Chef, Puppet, etc) to automatically provision
your computer the way you like it.

## Further Reading

- [Using GNU Stow to manage your dotfiles][url-invergo-stow]
- [Mozilla OpenSSH security guidelines][url-mozilla-ssh]
- [Good read on securing OpenSSH][url-secure-shell]

## LICENSE

The MIT License ([MIT](LICENSE.md))

[url-gnu-stow]: https://www.gnu.org/software/stow/
[url-invergo-stow]: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
[url-mozilla-ssh]: https://wiki.mozilla.org/Security/Guidelines/OpenSSH
[url-secure-shell]: https://stribika.github.io/2015/01/04/secure-secure-shell.html
