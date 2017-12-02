#!/bin/sh

if [ ! -f ~/.vim/pack/minpac/opt/minpac ]
then
    echo '[vim] Installing minpac...'
    mkdir -p ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
fi

exit 0
