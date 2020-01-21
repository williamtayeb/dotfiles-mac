#!/bin/bash

echo "Hi! I'm going to setup your entire environment. Hold on tight..."
echo

# Install software
./scripts/brew.sh

# Link dotfiles
./scripts/symlinks.sh

# Install vim plug
./scripts/vim.sh

# Install fonts
./scripts/fonts.sh

# See our .zshrc changes
source ~/.zshrc

echo "All done. Please kill this terminal."
echo
