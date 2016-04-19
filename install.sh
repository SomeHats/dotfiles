#!/bin/sh

brew tap Homebrew/bundle
brew install Caskroom/cask/java

brew install chruby md5sha1sum node
brew install coreutils
brew install direnv
brew install dnsmasq
brew install elasticsearch
brew install go --with-cc-common
brew install macvim
brew install mongodb
brew install neovim/neovim/neovim
brew install openssl
brew install ossp-uuid
brew install pkg-config
brew install postgres
brew install python
brew install python3
brew install ruby
brew install rust
brew install s3cmd
brew install zsh-syntax-highlighting

pip install powerline-status
pip install neovim
pip3 install neovim

npm install --global nodemon gulp bower forever typescript tern babel babel-cli

# Services:
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/elasticsearch/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
