#!/bin/sh
#
# Vundle setup
#
# Installs vundle from the git repository and installs vim plugins from vimrc
 
if ! [ -d ~/.vim/bundle/Vundle.vim ]
then
  echo " Installing vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
# Install vim plugins
if test $(which vim)
then
  echo " Installing vim packages"
  vim +PluginInstall +qall
else
  echo " vim not found, skipping vim plugins installation"
fi
