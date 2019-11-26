
if [ ! -d ~/.powerline-fonts ]
then
    git clone https://github.com/powerline/fonts.git ~/.powerline-fonts --depth=1
    cd ~/.powerline-fonts
    ./install.sh
fi

exit 0
