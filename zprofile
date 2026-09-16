# Login-shell PATH for GUI apps (Superset, IDEs). Interactive zshrc is unchanged.
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
elif [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv zsh)"
elif [[ -x $HOME/.linuxbrew/bin/brew ]]; then
  eval "$($HOME/.linuxbrew/bin/brew shellenv zsh)"
elif command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv zsh)"
fi

export PATH="$HOME/.local/share/mise/shims:$PATH"

if [[ -n $HOMEBREW_PREFIX && -d $HOMEBREW_PREFIX/opt/postgresql@18/bin ]]; then
  path=("$HOMEBREW_PREFIX/opt/postgresql@18/bin" $path)
fi
