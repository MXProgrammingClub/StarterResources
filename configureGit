#!/bin/bash

usage() {
    echo "usage: configureGit [[[-f file] [-o]] | [-h]]"
}

filename=~/.gitignore_global
overwrite=
while [ "$1" != "" ]
do
    case $1 in
        -f | --file)
            shift
            filename=$1
            ;;
        -o | --overwrite)
            overwrite=1
            ;;
        -h | --help)
            usage
            exit
            ;;
        *)
            usage
            exit 1
            ;;
    esac
    shift
done

echo Setting up git configuration.

git config --global core.excludesfile $filename

if [ "$overwrite"  = "1" ] || [ ! -f $filename ]
then
    echo -e "# Mac\n.DS_Store" > $filename
fi

echo Complete.
