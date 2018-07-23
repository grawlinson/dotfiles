# Add rubygem binary directory to $PATH
export PATH="$PATH:$(ruby -e "puts Gem.user_dir")/bin"
