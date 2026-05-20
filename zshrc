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
  "/opt/homebrew/opt/openjdk/bin"
  "/opt/homebrew/bin"
  "/usr/local/share/npm/bin"
  "/usr/local/bin"
  "$ANDROID_HOME/emulator"
  "$ANDROID_HOME/platform-tools"
  "$path[@]"
)

# Load plugins
plugins=(bundler git rake rails)

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
NVM_LAZY_COMMANDS=(nvm node npm npx yarn pnpm corepack codex)

load-nvm() {
  unset -f "${NVM_LAZY_COMMANDS[@]}" load-nvm
  unset NVM_LAZY_COMMANDS
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

for command in "${NVM_LAZY_COMMANDS[@]}"; do
  eval "$command() { load-nvm; $command \"\$@\"; }"
done
unset command

command_not_found_handler() {
  local command="$1"
  shift

  if typeset -f load-nvm >/dev/null; then
    load-nvm
    if command -v "$command" >/dev/null 2>&1; then
      "$command" "$@"
      return $?
    fi
  fi

  print -u2 "zsh: command not found: $command"
  return 127
}

eval "$(mise activate zsh)"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
