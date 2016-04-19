#!/bin/sh

cd config/nvim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
./install.py --clang-completer --gocode-completer --tern-completer --racer-completer
