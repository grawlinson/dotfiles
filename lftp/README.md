# LFTP

## Ease of use

*   Added bookmark for default SFTP server.

## Performance

*   Disabled cache. Force server to send up-to-date list of files.
*   Set pget chunks to 30. Aim is to completely saturate the connection.

## Cosmetic

*   Use colours.
*   Changed default prompt.

[Source][1]

## Connect

`lftp <bookmark title>`

Create a symlink for `.lftprc`

`ln -s ~/.dotfiles/lftp/lftprc ~/.lftprc`

Create folders for bookmarks & symlink `bookmarks`.

`mkdir -p ~/.lftp`

`ln -s ~/.dotfiles/lftp/bookmarks ~/.lftp/bookmarks`

[1]: http://lftp.yar.ru/lftp-man.html
