The purpose of these dotfiles is to automatically configure a fresh macOS system with my personal development environment. These dotfiles are crafted from scratch for my personal use and is not intended to be used by anyone else.

# Prerequisites

1. Download the latest [Git for Mac installer](https://sourceforge.net/projects/git-osx-installer/files/).
2. Follow the prompts to install Git.
3. Open a terminal and verify the installation was successful by typing `git --version`

# Installation

```
git clone https://github.com/williamtayeb/dotfiles-mac ~/.dotfiles
cd ~/.dotfiles
./setup.sh
```

The `setup.sh` script will automatically:

- Install homebrew packages
- Install mac software through cask
- Install fonts
- Setup vim plugins
- Setup tmux plugins
- Create symlinks for dotfiles within this package
- Setup and configure pyenv to use the latest python version


# Post Installation

To setup your private cloud and password manager:
1. Launch megasync and login
2. Launch enpass and restore data from a megasync backup

To setup iterm2:
1. Open iterm2 settings and modify the font to `SF Mono Powerline` with font size 11pt
2. Import iterm2 schemes from ~/.dotfiles/schemes
