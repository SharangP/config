CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`
ln -s "$CONFIGPATH/i3" ~/.i3
ln -s "$CONFIGPATH/Xdefaults" ~/.Xdefaults
ln -s "$CONFIGPATH/Xresources" ~/.Xresources
ln -s "$CONFIGPATH/bashrc" ~/.bashrc
ln -s "$CONFIGPATH/zshrc" ~/.zshrc
ln -s "$CONFIGPATH/vim" ~/.vim
ln -s "$CONFIGPATH/vimrc" ~/.vimrc

#install fonts
git clone https://github.com/powerline/fonts.git
fonts/install.sh
