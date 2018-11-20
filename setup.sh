#!/bin/bash

# Include helpers for colorized echo
source $HOME/dotfiles/lib/echos.sh

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

# Kitty Terminal Emulator
running "Installing kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ok

# Adobe Source Code Pro
running "Installing Adobe Source Code Pro"
brew tap caskroom/fonts && brew cask install font-source-code-pro
ok

# Pure zsh theme
running "Installing pure-prompt"
npm install --global pure-prompt
ok

echo

# Configure symlinks
running "Clearing default dotfiles"
rm -rf $HOME/.zshrc
rm -rf $HOME/.vimrc
rm -rf $HOME/.config/kitty/kitty.conf
rm -rf $HOME/.config/nvim/init.vim
rm -rf $HOME/.bash_completion
rm -rf $HOME/.bash_completion.d
rm -rf $HOME/bin
ok

running "Configuring symlinks"
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -s $HOME/dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -s $HOME/dotfiles/.bash_completion $HOME/.bash_completion
ln -s $HOME/dotfiles/.bash_completion.d $HOME/.bash_completion.d
ln -s $HOME/dotfiles/bin $HOME/bin
ok

echo
bot "All done. Kill this terminal and launch kitty."
