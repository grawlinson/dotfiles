# SSH

Create SSH directory & copy config there.

`mkdir -p ~/.ssh/`

`cp config ~/.ssh/`

Generate SSH key(s)

`ssh-keygen -t rsa -b 4096 -C "comment" -f /path/to/ssh/key`
