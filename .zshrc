# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/williamtayeb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload bashcompinit
bashcompinit

# Pure
autoload -U promptinit; promptinit
prompt pure

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Automatically ls after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ ls; }

# 10ms limit for key sequences
KEYTIMEOUT=1

# Set nvim as the default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Notes path
export NOTES=$HOME/Google\ Drive/notes

# Completion
source ~/.bash_completion

# Add user bin to path
export PATH=$PATH:$HOME/bin

# Typora alias
alias typora="open -a typora"
