# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="robbyrussell"

# Load plugins
plugins=(git brew bundler cap gem node npm osx pow rails rails3 ruby rvm )

source $ZSH/oh-my-zsh.sh

# Set path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
