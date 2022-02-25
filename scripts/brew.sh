# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update

brew install vim
brew install watson # Time tracking cli
brew install rename # Useful for renaming multiple files
brew install node
brew install neovim
brew install the_silver_searcher 
brew install yarn
brew install tmux
brew install pyenv
brew install coreutils
brew install mackup # Keeps application settings in sync with cloud storage
brew install go
brew install cmake

brew install --cask firefox
brew install --cask megasync
brew install --cask alfred
brew install --cask transmission
brew install --cask docker
brew install --cask iina
brew install --cask iterm2
brew install --cask rectangle
brew install --cask 1password
brew install --cask ticktick
brew install --cask discord
brew install --cask mysqlworkbench
brew install --cask pgadmin4
brew install --cask spotify
brew install --cask steam
brew install --cask visual-studio-code
brew install --cask appcleaner

softwareupdate --install-rosetta # Required for adobe acrobat reader
brew install --cask adobe-acrobat-reader

brew install --cask michaelvillar-timer
brew install --cask typora
brew install --cask dotnet-sdk
