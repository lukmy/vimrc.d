#!/bin/sh

# import vundle
git submodule init
git submodule update

# write .vimrc
echo "source ~/vimrc.d/basic_vimrc.vim" > ~/.vimrc
# install bundles
vim +BundleInstall +qall
