#!/bin/sh 
if [ -f ~/.git-completion.bash ]; then 
    mkdir ~/bin
fi
cp ./* ~/bin
