#!/bin/bash

CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`

if [ "$(uname)" == "Darwin" ]; then
    echo "OS X system detected"
    
    ln -s "$CONFIGPATH/vim" ~/.vim
    ln -s "$CONFIGPATH/vimrc" ~/.vimrc

    echo "source $HOME/config/aliases" >> ~/.bashrc
    echo "source $HOME/config/mac_bashrc" >> ~/.bashrc
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Linux system detected"

    ln -s "$CONFIGPATH/i3" ~/.i3
    ln -s "$CONFIGPATH/Xdefaults" ~/.Xdefaults
    ln -s "$CONFIGPATH/Xresources" ~/.Xresources
    ln -s "$CONFIGPATH/xinitrc" ~/.xinitrc
    ln -s "$CONFIGPATH/bashrc" ~/.bashrc
    ln -s "$CONFIGPATH/zshrc" ~/.zshrc
    ln -s "$CONFIGPATH/vim" ~/.vim
    ln -s "$CONFIGPATH/vimrc" ~/.vimrc
    ln -s "$CONFIGPATH/gitconfig" ~/.gitconfig
    ln -s "$CONFIGPATH/redshift" ~/.config/redshift.conf
    
    #install fonts
    git clone https://github.com/powerline/fonts.git
    fonts/install.sh
    
    #install oh-my-zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s /bin/zsh
    sed s/robbyrussell/agnoster/g ~/.zshrc -i
    echo "source $HOME/config/aliases" >> ~/.zshrc
    echo "source $HOME/config/zshrc" >> ~/.zshrc
    
    #urxvt clipboard
    curl https://raw.githubusercontent.com/muennich/urxvt-perls/master/clipboard > sudo tee /usr/lib/urxvt/perl/

else
    echo "Unknown system!"
    echo "Abort"
fi
