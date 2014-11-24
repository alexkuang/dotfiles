#!/bin/sh

if [ ! -f ~/.vim/autoload/pathogen.vim ]
then
    echo '[vim] Installing pathogen...'
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://tpo.pe/pathogen.vim
fi

# tlib + addon-mw-utils are dependencies for dispatch
pathogen_dir="$HOME/.vim/bundle"
pathogen_modules=('kien/ctrlp.vim' 'derekwyatt/vim-scala' 'kien/rainbow_parentheses.vim' 'tomtom/tlib_vim'
'MarcWeber/vim-addon-mw-utils' 'tpope/vim-dispatch' 'tpope/vim-surround' 'tpope/vim-repeat' 'godlygeek/tabular'
'tpope/vim-abolish' 'tpope/vim-commentary' 'tommcdo/vim-exchange' 'SirVer/ultisnips' 'wesgibbs/vim-irblack'
'elixir-lang/vim-elixir')

echo '[vim] Installing pathogen modules...'
for module in "${pathogen_modules[@]}"
do
    # `basename` is kind of hacky here, but I can't think of a better way to do it at the moment.
    module_name="`basename $module`"
    module_dir="$pathogen_dir/$module_name"

    if [ ! -d $module_dir ]
    then
        echo "[vim]   Installing $module_name..."
        # Using https so it doesn't error if we don't have a github account
        module_repo="https://github.com/${module}.git"
        git clone $module_repo $module_dir
    fi
done

exit 0
