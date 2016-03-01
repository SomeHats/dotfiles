#!/bin/zsh

cd bundle
for f in *; do
  cd $f
  git pull
  git submodule update --init --recursive
  cd ../
done
