# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="miloshadzic"

# Add a few things to the path
export PATH="$HOME/bin:/usr/local/share/npm/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# Load plugins
plugins=(bundler git heroku brew cap rbenv rake rails)

source $ZSH/oh-my-zsh.sh

# Tmuxinator completion
source ~/.dotfiles/completion/tmuxinator.zsh

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

# Set $EDITOR
export EDITOR='vim'

# Set $GOPATH
export GOPATH=$HOME/Code/go

# Add go bin path to $PATH
export PATH="$GOPATH/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
