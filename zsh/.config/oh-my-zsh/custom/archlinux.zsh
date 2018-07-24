# todo: similar aliases for yay
# pacaur aliases
if (( $+commands[pacaur] )); then
  alias paupg='pacaur -Syua'
  alias pasu='pacaur -Syua --noconfirm'
  alias pain='pacaur -S'
  alias pains='pacaur -U'
  alias pare='pacaur -R'
  alias parem='pacaur -Rns'
  alias parep='pacaur -Si'
  alias pareps='pacaur -Ss'
  alias paloc='pacaur -Qi'
  alias palocs='pacaur -Qs'
  alias palst='pacaur -Qe'
  alias paorph='pacaur -Qtd'
  alias painsd='pacaur -S --asdeps'
  alias pamir='pacaur -Syy'
fi

# pacman aliases
# source: https://wiki.archlinux.org/index.php/Pacman_Tips
alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias pacinsd='sudo pacman -S --asdeps'
alias pacmir='sudo pacman -Syy'
alias paclsorphans='sudo pacman -Qdt'
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pacfileupg='sudo pacman -Fy'
alias pacfiles='pacman tFs'

# list all explicitly installed packages
# source: https://bbs.archlinux.org/viewtopic.php?id=93683
paclist() {
  LC_ALL=C pacman -Qei $(pacman -Qu | cut -d " " -f 1) | \
    awk 'BEGIN {FS=":"} /^Name/{printf("\033[1;36m%s\033[1;37m", $2)} /^Description/{print $2}'
}
