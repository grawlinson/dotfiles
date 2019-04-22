# replace ls with exa
if command -v exa &> /dev/null; then
	alias ls="exa"
	alias l="ls -l"
	alias la="ls -la"
fi
