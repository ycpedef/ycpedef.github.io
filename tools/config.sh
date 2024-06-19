export hexo_path="$HOME/Workspace/hexo"
h() {
    cur_path=$(pwd);
    builtin cd $hexo_path
    if ! [ $# -lt 1 ]; then
        if [ -x $hexo_path/source/tools/$1 ]; then
            . $hexo_path/source/tools/$*
        else
            hexo $argv
        fi
        builtin cd $cur_path
    fi
}

