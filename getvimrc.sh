#!/bin/sh



if [ -f .vimrc ]; then
    #
    # check if there are changes between files
    # - if there are changes - no new file will be replaced
    # - if there are changes in system file, process will be terminate
    #
    differences=$(diff .vimrc ../.vimrc)
    if [ ! -z differences ]; then
        echo "There are differences beetween VIM files"
        echo "No file will be overwritten. Apply changes manually (if needed)"
        echo "diff:"
        diff .vimrc ../.vimrc
        exit
    fi
fi

cp ../.vimrc .vimrc

