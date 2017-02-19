#!/bin/sh

set -x

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/bin ~/.bin
touch ~/.zshrc-private

mkdir -p config/nvim/bundle
mkdir -p config/nvim/_backup
mkdir -p config/nvim/_temp
mkdir -p config/nvim/_dein/repos/github.com/Shougo/dein.vim
cd config/nvim/_dein/repos/github.com/Shougo
git clone https://github.com/Shougo/dein.vim
cd -
mkdir -p ~/.config
ln -s $PWD/config/nvim ~/.config/nvim
