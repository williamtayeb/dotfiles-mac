# Before Installation

1. Generate a ssh-key on the new macOS system
2. Sign into github.com and upload the generated ssh-key to your account
3. Download and install git


# Installation

```
git clone https://github.com/williamtayeb/dotfiles ~/.dotfiles
cd into ~/.dotfiles
execute setup.sh
```

# After Installation

1. Login to megasync
2. Setup enpass from megasync backup
3. Open .tmux.conf and press `Prefix + I` in order to download plugins
4. Open .vimrc in vim and execute `:PlugInstall`
5. Open iterm2 settings and set SF Mono Powerline as font with 11pt font size
6. Import schemes from ~/.dotfiles/schemes into iterm2
