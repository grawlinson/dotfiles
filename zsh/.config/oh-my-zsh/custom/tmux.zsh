# Conform to XDG Base Directory specification
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
alias tmux='tmux -f ~/.config/tmux/tmux.conf'

# Connect to remote tmux session via SSH
ssh-tmux(){
	ssh -t $@ "tmux attach || tmux new";
}
