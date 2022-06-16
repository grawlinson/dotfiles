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

# wrapper around extra-x86_64-build for caching downloaded dependencies
# TODO expand to use testing/staging
function ab-extra() {
  local EXTRA_ARGS=()

  # capture output for parsing dependencies
  makepkg_output=$(makepkg --printsrcinfo)

  #
  # cache various downloads
  #
  # rust - crates
  if grep -q "depends = rust\|cargo" <<<"$makepkg_output"; then
    EXTRA_ARGS+=(
      -d /var/cache/cargo/git:/build/.cargo/git
      -d /var/cache/cargo/registry:/build/.cargo/registry
    )
  fi

  # go - modules
  if grep -q "depends = go" <<<"$makepkg_output"; then
    EXTRA_ARGS+=(
      -d /var/cache/golang/pkg:/build/go/pkg
      -d /var/cache/golang/build:/build/.cache/go-build
    )
  fi

  # dart - packages
  if grep -q "depends = dart" <<<"$makepkg_output"; then
    EXTRA_ARGS+=(-d /var/cache/dartlang:/build/.pub-cache)
  fi

  # javascript - npm/yarn/pkg
  if grep -q "depends = npm\|yarn\|nodejs" <<<"$makepkg_output"; then
    EXTRA_ARGS+=(
      -d /var/cache/javascript/npm:/build/.npm
      -d /var/cache/javascript/pkg-cache:/build/.pkg-cache
      -d /var/cache/javascript/yarn:/build/.cache/yarn
    )
  fi

  extra-x86_64-build -- ${EXTRA_ARGS[@]} ${@}
}

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
