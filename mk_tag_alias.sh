#!/bin/sh
echo "tag current $PWD as $1"
if [ ! -x ~/FolderTager ]; then
    mkdir ~/FolderTager
fi
echo $PWD>~/FolderTager/$1