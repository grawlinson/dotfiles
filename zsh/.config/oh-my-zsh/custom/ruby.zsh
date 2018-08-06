# Add rubygem binary directory to $PATH
PATH="$PATH:$(ruby -e "puts Gem.user_dir")/bin"
export PATH
