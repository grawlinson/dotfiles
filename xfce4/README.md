# xfce4

## General

*   Ensure notifications work properly. ([Reference][2] & [Source][1])
*   Autostart xfce4 at login.([Source][3])

## UI

### Terminal

*   Monokai Theme. (Filename: [base16-monokai.dark.terminalrc][4])
*   UI "improvements"

### Icons, Panel, Dock

*   Numix Theme
*   Numix Icons
*   Topmenu Panel. Ensure this works properly. ([Reference][5])
*   Docky

DOCKY TODO:

*   [Docky](http://unix.stackexchange.com/questions/74664/where-does-docky-store-its-configuration) [Config](http://wiki.go-docky.com/index.php?title=GConf_Settings)
*   Autostart

Create a symlink for `.xinitrc`

`ln -s xinitrc ~/.xinitrc`

Create folders for terminal settings & symlink `terminalrc`

`mkdir -p ~/.config/xfce4/terminal`

`ln -s terminalrc ~/.config/xfce4/terminal/terminalrc`

Install Numix Theme + Docky

`pacman -S numix-theme docky`

Install Icons + Topmenu. After clone, enter each directory & `makepkg -sri`

`git clone https://aur.archlinux.org/numix-icon-theme-git.git`

`git clone https://aur.archlinux.org/numix-circle-icon-theme-git.git`

`git clone https://aur.archlinux.org/topmenu-gtk-git.git`

`git clone https://aur.archlinux.org/xfce4-topmenu-plugin-git.git`

Create a symlink for `.gtkrc-2.0`

`ln -s gtk-2.0 ~/.gtkrc-2.0`

[1]: https://wiki.archlinux.org/index.php/xinitrc#Configuration
[2]: https://bbs.archlinux.org/viewtopic.php?id=203164
[3]: https://wiki.archlinux.org/index.php/xinitrc#Autostart_X_at_login
[4]: https://github.com/chriskempson/base16-xfce4-terminal
[5]: https://git.javispedro.com/cgit/topmenu-gtk.git/about/
