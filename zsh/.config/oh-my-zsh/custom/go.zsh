# Export $GOPATH
export GOPATH=$HOME/go

# Always use Go modules, even inside GOPATH
export GO111MODULE=on

# Add Go binary directory to $PATH
export PATH="$PATH:$GOPATH/bin"
