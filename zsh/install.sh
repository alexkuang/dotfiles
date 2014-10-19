#!/bin/sh
#
# Install zsh, oh-my-zsh, etc.

if test ! $(which zsh)
then
    echo "[zsh] Installing zsh"
    brew install zsh
fi

if [ ! -d ~/.oh-my-zsh ]
then
    echo "[zsh] Installing oh-my-zsh"
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

exit 0
