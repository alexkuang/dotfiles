#!/bin/sh
#
# set up mise config and tools

set -e

DOTFILES_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MISE_CONFIG_DIR="$HOME/.config/mise"
MISE_CONFIG_SOURCE="$DOTFILES_ROOT/mise/config.toml"
MISE_CONFIG_TARGET="$MISE_CONFIG_DIR/config.toml"

if ! command -v mise > /dev/null 2>&1
then
  echo "mise is not installed. Run script/bootstrap or brew bundle first." >&2
  exit 1
fi

mkdir -p "$MISE_CONFIG_DIR"

if [ -e "$MISE_CONFIG_TARGET" ] && [ ! -L "$MISE_CONFIG_TARGET" ]
then
  mv "$MISE_CONFIG_TARGET" "$MISE_CONFIG_TARGET.backup"
fi

ln -sfn "$MISE_CONFIG_SOURCE" "$MISE_CONFIG_TARGET"

mise install
