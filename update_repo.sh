#!/usr/bin/env bash

updateRepo(){
    git checkout master
    git rebase upstream/master
    git push -f origin master
}

if git fetch upstream;then
    updateRepo
else 
    git remote add upstream https://github.com/tinylamb/Ubuntu-Conf.git
    git fetch upstream
    updateRepo
fi

