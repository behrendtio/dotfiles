# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="simple"

# Add a few things to the path
export ANDROID_HOME="$HOME/Library/Android/sdk"
export BUN_INSTALL="$HOME/.bun"

typeset -U path PATH
path=(
  "$HOME/bin"
  "$HOME/.local/bin"
  "$HOME/.opencode/bin"
  "$BUN_INSTALL/bin"
  "$HOME/.rbenv/bin"
  "$HOME/.rbenv/shims"
  "/opt/homebrew/opt/openjdk/bin"
  "/opt/homebrew/bin"
  "/usr/local/share/npm/bin"
  "/usr/local/bin"
  "$ANDROID_HOME/emulator"
  "$ANDROID_HOME/platform-tools"
  "$path[@]"
)

# Rbenv
eval "$(rbenv init -)"

# Load plugins
plugins=(bundler git rbenv rake rails)

source $ZSH/oh-my-zsh.sh

# Speed up git completion
__git_files () {
    _wanted files expl 'local files' _files
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
export LANG="en_GB.UTF-8"

# Set $EDITOR
export EDITOR='zed'

export NVM_DIR="$HOME/.nvm"
load-nvm() {
  unset -f nvm node npm npx yarn pnpm corepack load-nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

nvm() { load-nvm; nvm "$@"; }
node() { load-nvm; node "$@"; }
npm() { load-nvm; npm "$@"; }
npx() { load-nvm; npx "$@"; }
yarn() { load-nvm; yarn "$@"; }
pnpm() { load-nvm; pnpm "$@"; }
corepack() { load-nvm; corepack "$@"; }

. "$(brew --prefix asdf)/libexec/asdf.sh"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
