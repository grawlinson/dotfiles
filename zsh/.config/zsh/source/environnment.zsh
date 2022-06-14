#
# environment variables
#

# editor
if command -v nvim &> /dev/null; then
  export EDITOR='nvim'
elif command -v vim &> /dev/null; then
  export EDITOR='vim'
fi

# locale
export LANG='en_NZ.UTF-8'
export LC_ALL='en_NZ.UTF-8'

# more terminal futzing. yay.
export COLORTERM='24bit'

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
