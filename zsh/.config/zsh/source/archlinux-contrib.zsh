#
# helper functions for Arch Linux related work
#

# generates a deterministic hash of the current working directory
# TODO expand hash algos to use makepkg's blessed algos
# e.g hashdir $ALGO where ALGO=md5|sha1|sha224|sha256|sha384|sha512|b2
# NB: i don't trust anything before sha256...
function hashdir() {
  find \
    . \
    -type f \
    -not -path '*/\.git/*' \
    -exec b2sum {} + | \
    LC_ALL=C sort | \
    b2sum | \
    cut -d ' ' -f 1
}

# obtain commit hash for a specific reference/tag
function tag2commit() {
  local repository=$1
  local tag=$2

  git ls-remote $repository $tag
}
# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
