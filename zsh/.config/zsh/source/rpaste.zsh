function rpaste() {
  local file=${1:-/dev/stdin}
  curl --data-binary @${file} https://paste.rs
}
# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
