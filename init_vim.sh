#!/bin/bash
#
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install go binaries needed by vim-go
source .bashrc
go version
vim +GoInstallBinaries +qall

