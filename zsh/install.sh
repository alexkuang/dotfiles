#!/bin/sh
#
# Install oh-my-zsh, etc.

# zsh installed as a part of homebrew/install.sh
if [ ! -d ~/.oh-my-zsh ]
then
    echo "[zsh] Installing oh-my-zsh"
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

exit 0
