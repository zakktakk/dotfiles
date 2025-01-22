#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# link vimrc
mkdir -p $HOME/.vim/colors
ln -s $HOME/dotfiles/vim/config.d/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/vim/config.d/hybrid.vim $HOME/.vim/colors/hybrid.vim

vim +PluginInstall +qall
