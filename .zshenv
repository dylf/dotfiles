ZDOTDIR="$HOME/.config/zsh"
. "$HOME/.cargo/env"

# fnm
[ -f "$HOME/local/bin/fnm" ] && eval "$(fnm env --use-on-cd --shell zsh)"
