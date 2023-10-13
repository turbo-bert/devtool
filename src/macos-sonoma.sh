#!/bin/bash



github_sh_to_bin() {
    curl -L -o ~/bin/$1 "$2"
    chmod a+x ~/bin/$1
}


if [[ ! -d ~/bin ]]; then
    mkdir -p ~/bin
fi

if [[ $1 = u ]]; then
    github_sh_to_bin osd 'https://raw.githubusercontent.com/turbo-bert/osd/main/osd.sh'
    github_sh_to_bin ds 'https://raw.githubusercontent.com/turbo-bert/osd/main/ds.sh'
fi
