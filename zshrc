# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="miloshadzic"

# Load plugins
plugins=(bundler git heroku brew cap gem node npm osx rbenv rvm rake rails rails3 vagrant)

source $ZSH/oh-my-zsh.sh

# Set path
export PATH=/Users/mario/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Speed up git completion
__git_files () {
    _wanted files expl 'local files' _files
}

# Set iTerm tab name to PWD
function precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}

# Huge history size
export HISTSIZE=4096

# Source aliases and functions
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions

# Do not change tmux window title on `cd`
DISABLE_AUTO_TITLE=true

# Disable flow control keys
stty start undef
stty stop undef

# Vi mode on command line ftw!
set -o vi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
