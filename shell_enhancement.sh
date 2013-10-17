
pull_vimrc() {
    current_dir=$(pwd); cd ~/vimrc.d

    { # try
        git pull --rebase
    } || { # catch
        red_color="\033[31m"
        default_color="\033[0m"
        echo ""
        echo "${red_color}Ooops, it seems that u got problem fetching or merging the repository. go and check it.$default_color"
        return 
    }

    vim +BundleInstall +qall

    cd $current_dir
}

push_vimrc() {
    current_dir=$(pwd); cd ~/vimrc.d

    git push origin

    cd $current_dir
}
