CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`
ln -s "$CONFIGPATH/i3" ~/.i3
ln -s "$CONFIGPATH/bashrc" ~/.bashrc
ln -s "$CONFIGPATH/zshrc" ~/.zshrc
ln -s "$CONFIGPATH/vim" ~/.vim
ln -s "$CONFIGPATH/vimrc" ~/.vimrc
