# The following lines were added by compinstall

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'

zmodload zsh/datetime

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

EDITOR="gvim"

export PS1="$(print '%{\e[1;35m%}%S%c%s%{\e[0m%}')> "
alias ls='ls -abhX --color=auto'
export LS_COLORS='di=01;33'


#####
# KEYBINDINGS
#####
        
export WORDCHARS='*?_[]~=&;!#$%^(){}'

# Set up home and end keys
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
case $TERM in (xterm*)
	bindkey '\e[H' beginning-of-line
	bindkey '\e[F' end-of-line ;;
esac

# Configure delete key
bindkey "\e[3~" delete-char

# Configure shift+tab = cycle backwards through completions
# (AJP - DOESN'T WORK)
bindkey -e
bindkey '\e[Z' reverse-menu-complete
bindkey '\e[5C' emacs-backward-word
bindkey '\e[1;5C' emacs-backward-word

#####
# General utility and correction
#####

### Some general shortcuts
alias fn='find . -name'
alias -g xclip='xclip -selection c' 
# alias -s html = w3m --> suffix (.html might open with web browser, etc.)
alias ll='ls -l'

alias ..='cd ..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -- -="cd -" # the -- signifies that the variable will start with a -, so `-` will invoke `cd -`

alias -g L='| less'
alias -g Q='| grep -v \.swp | grep -v log/ | grep -v tmp/ |  grep -v vendor/rails/'

# Spelling corrections for common commands
alias dc='cd'
alias sl='ls -aAbhX --color=auto'
alias pw='pwd'
alias pdw='pwd'
alias grpe='grep'

export GREP_OPTIONS='--color=auto' GREP_COLOR='1;29'

#####
# COMMAND SHORTCUTS
#####

alias sagi="sudo apt-get install"
alias sgi="sudo gem install"
alias xm="xmms2"

# ruby
alias -g eg='--no-rdoc --no-ri'

# Rails
alias rdd="rake db:drop"
alias rdm="rake db:migrate"
alias rdtp="rake db:test:prepare"
alias rmig="./script/generate migration"
alias rkae="rake"

# RSpec
alias rs="rake spec"
alias rsm="rake spec:models"
alias rsc="rake spec:controllers"
alias rsv="rake spec:views"
alias rsh="rake spec:helpers"

# Heroku
export PATH=$PATH:/var/lib/gems/1.8/bin
alias hrdm="heroku rake db:migrate"

# zsh shorcuts
alias zshc="gvim ~/.zshrc"
alias reload="source ~/.zshrc"

# general shorcuts
alias d2u=dos2unix
alias u2d=unix2dos
alias go=gnome-open

# git shortcuts
alias gs="git status"
alias gco="git checkout"
alias gb="git branch"
alias gd="git diff"
alias gl="git log --pretty=oneline --graph"
alias gls="gb; echo;git log | head -5"
alias gmt="git mergetool"
alias grc="git rebase --continue"

# gvim shortcut
alias g="gvim"

#####
# QUICK PATHS
#####
desk=/home/anthony/Desktop
