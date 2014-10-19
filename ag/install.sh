#!/bin/sh
#
# Install ag

if test ! $(which ag)
then
    echo "[ag] Installing ag"
    brew install ag
fi

# TODO - figure out what .agignore I need.

exit 0
