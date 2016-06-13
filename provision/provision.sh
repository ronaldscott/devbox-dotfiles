#!/bin/bash

# provision.sh

pacaur -Sy --noconfirm --noedit ttf-font-awesome xtitle yabar-git
pacaur -Sy --noconfirm --noedit vte3-ng termite-git
pacaur -Sy --noconfirm --noedit stalonetray
pacaur -Sy --noconfirm --noedit glances
pacaur -Sy --noconfirm --noedit ncdu

curl -s -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.profile.d/git-completion.bash