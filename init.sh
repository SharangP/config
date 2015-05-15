CONFIGPATH=`realpath $0`
CONFIGPATH=`dirname $CONFIGPATH`
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
echo "source $HOME/config/env" >> ~/.zshrc
