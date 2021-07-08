#
# colours
#

# generate themed colours (solarized-dark)
if command -v vivid &> /dev/null; then
  export LS_COLORS="$(vivid generate solarized-dark)"
fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
