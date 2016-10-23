# Install NPM packages globally without requiring sudo.
# Source: https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md

export NPM_CONFIG_USERCONFIG=$HOME/.config/npm/config
export NPM_CONFIG_CACHE=$HOME/.cache/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm
export NPM_CONFIG_PREFIX=$HOME/.local/share/npm

PATH="$NPM_CONFIG_PREFIX/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_CONFIG_PREFIX/share/man:$(manpath)"
