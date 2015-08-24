#!/bin/bash

CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`

ln -s "$CONFIGPATH/vim" ~/.vim
ln -s "$CONFIGPATH/vimrc" ~/.vimrc
ln -s "$CONFIGPATH/inputrc" ~/.inputrc
ln -s "$CONFIGPATH/gitconfig" ~/.gitconfig

echo "source $CONFIGPATH/aliases" >> ~/.bashrc
echo "source $CONFIGPATH/debian_bashrc" >> ~/.bashrc
echo "xmodmap $CONFIGPATH/Xmodmap" >> ~/.bashrc

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash


