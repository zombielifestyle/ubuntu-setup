# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="bira"
#ZSH_THEME="frisk"
#ZSH_THEME="terminalparty"
#ZSH_THEME="wedisagree"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

oxid=~/Projects/oxid-ce
downloads=~/Downloads
vlog=/var/log

zstyle ':completion:*' accept-exact '*(N)'

set_title() {
 echo -ne "\e]0;$1\a"
}

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

# Phake autocompletion
# ====================
# (http://jaredforsyth.com/blog/2010/may/30/easy-zsh-auto-completion/)
_phake() {
    reply=(`phake -T | awk 'NR > 1 { print $1 }' | tr "\\n" " "`)
}
compctl -K _phake phake
