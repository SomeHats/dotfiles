#!/bin/sh

set -x

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/bin ~/.bin
touch ~/.zshrc-private

mkdir -p config/nvim/bundle
mkdir -p config/nvim/_backup
mkdir -p config/nvim/_temp
cd config/nvim/bundle
git clone https://github.com/Shougo/neobundle.vim.git
cd -
mkdir -p ~/.config
ln -s $PWD/config/nvim ~/.config/nvim
