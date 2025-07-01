
export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin

export PATH="$PATH:$HOME/.dotfiles/bin:/opt/homebrew/bin"

eval "$(brew shellenv)"
export PATH="${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin:${HOMEBREW_PREFIX}/opt/findutils/libexec/gnubin:$PATH"

# uv
export PATH="/Users/alexkuang/.local/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# coursier (scala)
export PATH="$PATH:/Users/alexkuang/Library/Application Support/Coursier/bin"
