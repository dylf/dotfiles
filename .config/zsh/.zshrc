# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"
ZSH_CUSTOM="$ZDOTDIR"
ZSH_THEME=""
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins+=(colored-man-pages)
plugins+=(k)
plugins+=(docker)
plugins+=(docker-compose)
plugins+=(alias-finder)
plugins+=(aws)
plugins+=(yarn)
plugins+=(zsh-completions)
plugins+=(zsh-interactive-cd)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)
plugins+=(z)

source $ZSH/oh-my-zsh.sh

# User configuration
ZSH_ALIAS_FINDER_AUTOMATIC=true

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases

#ALIASES
alias kill-em-all='docker container kill $(docker ps -aq)'
alias open='xdg-open &> /dev/null'
alias o='xdg-open &>/dev/null'
alias oldvim=\vim
alias vim=nvim
alias vi=nvim
alias v=nvim
alias rmnm='rm -rf node_modules'
alias rmven='rm -rf vendor'
alias bat='batcat'
alias path='echo -e ${PATH//:/\\n}'
alias work='cd ~/projects/work/'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias tb='nc termbin.com 9999'
alias zshconf='$EDITOR $ZDOTDIR/.zshrc'
alias zshsrc='source $ZDOTDIR/.zshrc'
alias aws-auth='authenticate-aws-mfa.sh --name dfontaine'
#END ALIASES

# BEGIN SNIPPET: Platform.sh CLI configuration
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi
# END SNIPPET

# Add additional bin directories to $PATH
export PATH=~/.local/bin:~/.npm-global/bin:./vendor/bin:$PATH

## Add solana to path
export PATH=~/.local/share/solana/install/active_release/bin:$PATH
##

# Add completion to the path
fpath+="$ZDOTDIR/completion"

eval "$(starship init zsh)"

# fnm
[ -f ~/.local/bin/fnm ] && eval "`fnm env`"

# Vi mode
bindkey -v

### zsh-completions
autoload -U compinit && compinit
###

export PATH=~/projects/work/acro/infrastructure/bin:$PATH
