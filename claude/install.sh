#!/bin/sh

DOTFILES_ROOT="`pwd`"

echo '[claude] installing claude common settings.json'
mkdir -p ~/.claude/
ln -s "$DOTFILES_ROOT/claude/settings.json" ~/.claude/settings.json
echo '[claude] done'
