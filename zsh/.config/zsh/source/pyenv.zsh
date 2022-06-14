#
# pyenv
#

# Reference: https://github.com/pyenv/pyenv#advanced-configuration
if command -v pyenv &> /dev/null; then
  export PYENV_ROOT="$HOME/.config/pyenv"
  export PATH="$PYENV_ROOT/shims:$PATH"
fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
