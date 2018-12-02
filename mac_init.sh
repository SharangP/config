#!/bin/bash

set -e

CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`

cd ~

ln -sf "$CONFIGPATH/vim" ~/.vim
ln -sf "$CONFIGPATH/vimrc" ~/.vimrc
ln -sf "$CONFIGPATH/inputrc" ~/.inputrc

echo "source ~/.bashrc" >> ~/.bash_profile
echo "source $HOME/config/aliases" >> ~/.bashrc
echo "source $HOME/config/mac_bashrc" >> ~/.bashrc
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# preferences
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
defaults write com.apple.finder ShowPathbar -bool true

# TODO: fix this
#YouCompleteMe
#cd YouCompleteMe
#git -C ~/.vim/bundle/YouCompleteMe submodule update --init --recursive
#~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
