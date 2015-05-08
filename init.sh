CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`
ln -s "$CONFIGPATH/bashrc" ~/.bashrc
ln -s "$CONFIGPATH/zshrc" ~/.zshrc
