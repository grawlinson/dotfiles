# Add rubygem binary directory to $PATH
export PATH="$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin"
