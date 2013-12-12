#!/bin/sh

# import vundle
git submodule init
git submodule update

# write .vimrc
echo "source $HOME/vimrc.d/basic_vimrc.vim" > $HOME/.vimrc
# install bundles
vim +BundleInstall +qall

case $SHELL in
    *bash)
        target=$HOME/.bashrc
        ;;
    *zsh)
        target=$HOME/.zshrc
        ;;
    *)
        ;;
esac
echo "source $HOME/vimrc.d/shell_enhancement.sh" >> $target
