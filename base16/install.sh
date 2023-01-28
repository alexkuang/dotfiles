# Support for 256 colors using base16 themes

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && \
        [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
                source "$BASE16_SHELL/profile_helper.sh"
base16_default-dark
