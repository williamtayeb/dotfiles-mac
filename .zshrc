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
