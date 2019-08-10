#!/bin/bash

# Include helpers for colorized echo
source ./lib/echos.sh

bot "Hi! I'm going to setup your entire development environment. Hold on tight..."
echo

# Homebrew
running "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
ok

# Watson Time Tracking
running "Installing watson"
brew update && brew install watson
ok

running "Installing tree"
brew install tree
ok

running "Installing rename"
brew install rename
ok

running "Installing zsh"
brew install zsh
ok

running "Installing node"
brew install node
ok

running "Installing neovim"
brew install neovim
ok

running "Installing the_silver_searcher"
brew install the_silver_searcher
ok

# Adobe Source Code Pro
running "Installing Adobe Source Code Pro"
brew tap caskroom/fonts && brew cask install font-source-code-pro
ok

# Pure zsh theme
running "Installing pure-prompt"
npm install --global pure-prompt
ok

# Docker
running "Installing Docker for Mac"
brew cask install docker
ok

# Docker
running "Installing GNU core utilities"
brew install coreutils
ok

# ssh-vault
running "Installing ssh-vault"
brew install ssh-vault
ok

# Yarn
running "Installing yarn"
brew install yarn --without-node
ok

# IINA
running "Installing IINA"
brew cask install iina
ok

# tmux
running "Installing tmux"
brew install tmux
ok

# iterm2
running "Installing iterm2"
brew cask install iterm2
ok

# oh-my-zsh
running "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ok


echo

DOTFILES="$HOME/Repositories/dotfiles"

# Configure symlinks
running "Clearing default dotfiles"
rm -rf $HOME/.vimrc
rm -rf $HOME/.williamrc
rm -rf $HOME/.gitignore
rm -rf $HOME/.gitconfig
rm -rf $HOME/.config/nvim/init.vim
ok

running "Configuring symlinks"
ln -s $DOTFILES/.williamrc $HOME/.williamrc
ln -s $DOTFILES/.vimrc $HOME/.vimrc
ln -s $DOTFILES/.gitignore $HOME/.gitignore
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

mkdir -p $HOME/.config/nvim/init.vim
ln -s $DOTFILES/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ok

echo "source ~/.williamrc" >> $HOME/.zshrc

echo
bot "All done. Kill this terminal."
