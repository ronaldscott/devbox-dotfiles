#!/bin/bash

# install-from-aur.sh

mkdir -p ~/.cache/ifa
cd ~/.cache/ifa && git clone https://aur.archlinux.org/$1.git
cd ~/.cache/ifa/$1 && makepkg --skippgpcheck --noconfirm --needed --noprogressbar -csri