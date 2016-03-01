#!/bin/sh

set -x

ln -sf $PWD/zshrc ~/.zshrc

mkdir -p ~/.config
cd config/nvim/bundle
git clone https://github.com/Shougo/neobundle.vim.git
cd -
ln -sf $PWD/config/nvim ~/.config/nvim
