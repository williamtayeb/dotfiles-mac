# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null

brew update

brew install vim
brew install watson
brew install tree
brew install rename
brew install zsh
brew install node
brew install neovim
brew install the_silver_searcher
brew install ssh-vault
brew install yarn
brew install tmux

brew cask install docker
brew cask install iina
brew cask install iterm2

brew upgrade python

# Adobe Source Code Pro
brew tap caskroom/fonts && brew cask install font-source-code-pro

# GNU core utilities
brew install coreutils

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
