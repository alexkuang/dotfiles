
export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin

export PATH="$PATH:$HOME/.dotfiles/bin:/opt/homebrew/bin"

eval "$(brew shellenv)"
export PATH="${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin:${HOMEBREW_PREFIX}/opt/findutils/libexec/gnubin:$PATH"
