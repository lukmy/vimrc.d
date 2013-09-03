#!/bin/sh

git clone https://github.com/lukmy/vimrc.d.git ~/vimrc.d
cd  ~/vimrc.d

# import vundle
git submodule init
git submodule update

# write .vimrc
echo "source ~/vimrc.d/basic_vimrc.vim" > ~/.vimrc
# install bundles
vim +BundleInstall +qall
