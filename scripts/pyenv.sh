# Required in order to install YouCompleteMe
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# Install latest pyenv python
pyenv install $(pyenv install --list | sed 's/^  //' | grep '^\d' | grep --invert-match 'dev\|a\|b' | tail -1)

# Configure pyenv to use latest python version
pyenv global $(pyenv install --list | sed 's/^  //' | grep '^\d' | grep --invert-match 'dev\|a\|b' | tail -1)

