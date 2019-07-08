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

# Alias
alias typora="open -a typora"

alias ga="git add -A"
alias gs="git status"

export GOOGLE_APPLICATION_CREDENTIALS="/Users/williamtayeb/Downloads/Resources/gcs-private-key.json"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/williamtayeb/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/williamtayeb/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/williamtayeb/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/williamtayeb/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
