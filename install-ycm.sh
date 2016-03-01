#!/bin/sh

cd config/nvim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
./install.py --clang-compelter --gocode-completer --tern-completer --racer-completer
