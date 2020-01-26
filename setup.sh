#!/bin/bash

echo "Hi! I'm going to setup your entire environment. Hold on tight..."
echo

./scripts/brew.sh
./scripts/symlinks.sh
./scripts/pyenv.sh
./scripts/vim.sh
./scripts/fonts.sh

# See our .zshrc changes
source ~/.zshrc

# Setup golang environment
./scripts/go.sh

echo "All done. Please kill this terminal."
echo
