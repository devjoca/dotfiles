#!/bin/bash

if ! command -v rsync &> /dev/null
then
    echo "rsync could not be found"
    exit
fi

rsync -r $HOME/.config/nvim ./
rm -rf nvim/autoload


