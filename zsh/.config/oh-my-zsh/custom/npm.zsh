# Install NPM packages globally without requiring sudo.
# Source: https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md

# Use XDG dirs
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm
export NPM_CONFIG_PREFIX=$XDG_DATA_HOME/npm

PATH="$NPM_CONFIG_PREFIX/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_CONFIG_PREFIX/share/man:$(manpath)"
export MANPATH
