alias kill-em-all='docker container kill $(docker ps -aq)'

alias open='xdg-open &> /dev/null'
alias o='xdg-open &>/dev/null'

alias vim=nvim
alias vi=nvim
alias v=nvim
alias n=nvim

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
alias candymachine='ts-node ~/.local/share/metaplex-foundation/metaplex/js/packages/cli/src/candy-machine-cli.ts'

alias zshconf='$EDITOR $ZDOTDIR/.zshrc -c "cd %:p:h"'
alias zshsrc='source $ZDOTDIR/.zshrc'

# Global Aliases can be used in pipes
alias -g gp="grep"

# Suffix Aliases
# automatically open .txt files in neovim
alias -s txt="nvim"

# Parameter aliases
# Seach man pages
search_man() {
    man $1 | grep -- $2
}
