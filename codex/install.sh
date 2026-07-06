#!/bin/sh
#
# Link Codex rules while leaving local Codex state alone.

set -e

DOTFILES_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CODEX_DIR="$HOME/.codex"
RULES_SOURCE="$DOTFILES_ROOT/codex/rules"
RULES_TARGET="$CODEX_DIR/rules"

echo '[codex] installing rules'

mkdir -p "$CODEX_DIR"

if [ -L "$RULES_TARGET" ]
then
  ln -sfn "$RULES_SOURCE" "$RULES_TARGET"
  echo '[codex] done'
  exit 0
fi

if [ -e "$RULES_TARGET" ]
then
  if [ ! -d "$RULES_TARGET" ]
  then
    echo "[codex] $RULES_TARGET exists and is not a directory or symlink" >&2
    exit 1
  fi

  if [ ! -f "$RULES_TARGET/default.rules" ] || ! cmp -s "$RULES_TARGET/default.rules" "$RULES_SOURCE/default.rules"
  then
    echo "[codex] existing $RULES_TARGET/default.rules differs from dotfiles copy" >&2
    exit 1
  fi

  entry_count="$(find "$RULES_TARGET" -mindepth 1 -maxdepth 1 | wc -l | tr -d ' ')"
  if [ "$entry_count" != "1" ]
  then
    echo "[codex] $RULES_TARGET contains extra files; refusing to replace it" >&2
    exit 1
  fi

  rm "$RULES_TARGET/default.rules"
  rmdir "$RULES_TARGET"
fi

ln -s "$RULES_SOURCE" "$RULES_TARGET"

echo '[codex] done'
