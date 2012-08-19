# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="robbyrussell"

# Load plugins
plugins=(git brew bundler cap gem node npm osx rails rails3 ruby rvm vagrant)

source $ZSH/oh-my-zsh.sh

# Set path
export PATH=/Users/mario/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Add dev environment startup alias
alias dev="sudo nginx; mysql.server start; php-fpm"

# Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Speed up git completion
__git_files () { 
    _wanted files expl 'local files' _files 
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
