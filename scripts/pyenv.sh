# Install pyenv
curl https://pyenv.run | bash

# Restart shell so the path changes take effect
exec $SHELL

# Install latest pyenv python
pyenv install $(pyenv install --list | sed 's/^  //' | grep '^\d' | grep --invert-match 'dev\|a\|b' | tail -1)

# Configure pyenv to use latest python version
pyenv global $(pyenv install --list | sed 's/^  //' | grep '^\d' | grep --invert-match 'dev\|a\|b' | tail -1)

