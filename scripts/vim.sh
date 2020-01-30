# VimPlug vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VimPlug nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins
vim +PlugInstall +qall > /dev/null
nvim +PlugInstall +qall > /dev/null

# Install YouCompleteMe
python ~/.vim/plugged/YouCompleteMe/install.py
python ~/.local/share/nvim/site/plugged/YouCompleteMe/install.py
