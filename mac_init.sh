#!/bin/bash

CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`


ln -s "$CONFIGPATH/vim" ~/.vim
ln -s "$CONFIGPATH/vimrc" ~/.vimrc
ln -s "$CONFIGPATH/inputrc" ~/.inputrc

echo "source $HOME/config/aliases" >> ~/.bashrc
echo "source $HOME/config/mac_bashrc" >> ~/.bashrc
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

#YouCompleteMe
cd YouCompleteMe
git -C ~/.vim/bundle/YouCompleteMe submodule update --init --recursive
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
