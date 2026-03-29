ZDOTDIR="$HOME/.config/zsh"
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# fnm
[ -f "$HOME/local/bin/fnm" ] && eval "$(fnm env --use-on-cd --shell zsh)"
[ -f "/opt/homebrew/bin/fnm" ] && eval "$(/opt/homebrew/bin/fnm env --use-on-cd --shell zsh)"
