# Editor (NVIM)
if command -v nvim &> /dev/null; then
	export EDITOR=/usr/bin/nvim
	alias vim="nvim"
	alias vi="nvim"
fi
