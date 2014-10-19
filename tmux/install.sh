#!/bin/sh

if test ! $(which tmux)
then
  echo "[tmux] Installing tmux"
  brew install tmux
fi

exit 0
