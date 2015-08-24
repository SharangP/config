#!/bin/bash

CONFIGPATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


ln -s "$CONFIGPATH/vim" ~/.vim
ln -s "$CONFIGPATH/vimrc" ~/.vimrc
ln -s "$CONFIGPATH/inputrc" ~/.inputrc
ln -s "$CONFIGPATH/gitconfig" ~/.gitconfig

echo "source $CONFIGPATH/aliases" >> ~/.bashrc
echo "source $CONFIGPATH/debian_bashrc" >> ~/.bashrc

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

mkdir ~/solarized
cd ~/solarized
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
gnome-terminal-colors-solarized/install.sh
