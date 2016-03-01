#!/bin/sh

set -x

ln -sf $PWD/zshrc ~/.zshrc

mkdir -p config/nvim/bundle
mkdir -p config/nvim/_backup
mkdir -p config/nvim/_temp
cd config/nvim/bundle
git clone https://github.com/Shougo/neobundle.vim.git
cd -
mkdir -p ~/.config
ln -sf $PWD/config/nvim ~/.config/nvim
