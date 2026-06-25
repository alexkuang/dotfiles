#!/bin/sh
#
# Link fd's global ignore file.

set -e

mkdir -p "$HOME/.config/fd"
ln -sf "$PWD/fd/ignore" "$HOME/.config/fd/ignore"
