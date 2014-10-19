#!/bin/sh
#
# Install powerline extension

if [ ! -d ~/.powerline ]
then
    echo "[zsh] Installing powerline"
    git clone https://github.com/Lokaltog/powerline.git ~/.powerline
fi

exit 0
