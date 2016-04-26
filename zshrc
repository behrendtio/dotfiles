# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="miloshadzic"

# Add a few things to the path
export PATH="$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# Load plugins
plugins=(bundler docker git brew cap rbenv rake rails)

source $ZSH/oh-my-zsh.sh

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

# English!
export LANG="en_US.UTF-8"

# Set $EDITOR
export EDITOR='vim'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mario/Code/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mario/Code/google-cloud-sdk/completion.zsh.inc'
