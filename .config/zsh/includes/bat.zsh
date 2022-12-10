[ -x "$(command -v batcat)" ] && alias cat=batcat
[ -x "$(command -v bat)" ] && alias cat=bat

batdiff() {
    git diff --name-only --relative --diff-filter=d | xargs bat --diff
}

alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}
