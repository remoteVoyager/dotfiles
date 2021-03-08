#!usr/bin/sh

# software install ubuntu WSL
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

sudo apt update

sudo apt install nvim ranger fish gh

# configuration files 
# vim
ln -s init.vim ~/.config/nvim/init.vim
ln -s vimscripts ~/.config/nvim/vimscripts
nvim +PlugInstall

# fish
ln -s config.fish ~/.config/fish/config.fish

# bashrc 
ln -s .bashrc ~/.bashrc

# tmux
ln -s .tmux.conf ~/.tmux.conf

# git
ln -s .gitconfig ~/.gitconfig

# dircolors
ln -s .dircolors ~/.dircolors

