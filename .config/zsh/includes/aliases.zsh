alias kill-em-all='docker container kill $(docker ps -aq)'

alias open='xdg-open &> /dev/null'
alias o='xdg-open &>/dev/null'

alias vim=$EDITOR
alias vi=$EDITOR
alias v=$EDITOR
alias nv=nvim

alias lg='lazygit'

alias tma='tmux attach-session'

alias p='pnpm'
alias lndp='lando pnpm'

alias rmnm='rm -rf node_modules'
alias rmven='rm -rf vendor'

alias path='echo -e ${PATH//:/\\n}'

alias work='cd ~/projects/work/'
alias personal='cd ~/projects/personal'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias tb='nc termbin.com 9999'
alias publicip='dig +short txt ch whoami.cloudflare @1.0.0.1'

alias aws-auth='authenticate-aws-mfa.sh --name dfontaine'

alias zconf='$EDITOR $ZDOTDIR/.zshrc -c "cd %:p:h"'
alias zsrc='source $ZDOTDIR/.zshrc'

# Global Aliases can be used in pipes
alias -g gp='grep'

# Suffix Aliases
# automatically open .txt files in neovim
alias -s txt='nvim'

# Parameter aliases
# Seach man pages
search_man() {
    man $1 | grep -- $2
}
