# Lightweight replacements for the small subset of Oh My Zsh this setup used.

# Because tmux is weird.
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# Preserve the heavily-used Oh My Zsh git shortcut. The rest of the common
# git shortcuts are configured as native git aliases in ~/.gitconfig.
alias g="git"

setopt PROMPT_SUBST

_dotfiles_git_prompt_info() {
  command git rev-parse --git-dir > /dev/null 2>&1 || return 0
  [[ "$(command git config --get oh-my-zsh.hide-info 2> /dev/null)" == 1 ]] && return 0

  local ref dirty
  ref="$(command git symbolic-ref --short HEAD 2> /dev/null)" \
    || ref="$(command git describe --tags --exact-match HEAD 2> /dev/null)" \
    || ref="$(command git rev-parse --short HEAD 2> /dev/null)" \
    || return 0

  if [[ -n "$(command git status --porcelain 2> /dev/null)" ]]; then
    dirty=" %F{red}*%F{green}"
  fi

  print -r -- "%F{green}[${ref//\%/%%}${dirty}]%f"
}

PROMPT='%B%F{green}%n@%m%b %F{blue}%D{[%X]}%f %F{white}[%~]%f $(_dotfiles_git_prompt_info)
%F{blue}->%B%F{blue} %#%f%b '

if command -v direnv > /dev/null 2>&1
then
  eval "$(direnv hook zsh)"
fi
