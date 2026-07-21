#!/usr/bin/env bash
# Claude Code statusline: OAuth team in BIG CAPS + model + dir.
#   e.g.  ▐ RODIUM ▌ · Opus 4.8 · traversive
# Org name is read live from ~/.claude.json (reflects the logged-in account);
# model + dir come from the statusline JSON piped in on stdin.

input=$(cat)

org=$(jq -r '.oauthAccount.organizationName // empty' "$HOME/.claude.json" 2>/dev/null)
[ -z "$org" ] && org="NO TEAM"
org=$(printf '%s' "$org" | tr '[:lower:]' '[:upper:]')

model=$(printf '%s' "$input" | jq -r '.model.display_name // empty')
dir=$(printf '%s' "$input" | jq -r '(.workspace.current_dir // .cwd) // empty')
dir=${dir##*/}   # basename only

# bold bright-cyan team badge, then dimmed model · dir
printf '\033[1;96m▐ %s ▌\033[0m' "$org"
[ -n "$model" ] && printf '\033[2m · %s\033[0m' "$model"
[ -n "$dir" ]   && printf '\033[2m · %s\033[0m' "$dir"

exit 0
