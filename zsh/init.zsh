#!/bin/zsh
set -e

# 日常使用
brew install atuin
brew install lsd
brew install jq
brew install yq
brew install antidote

# cask
brew install clash-verge-rev
brew install switchkey

# 语言版本管理 [op]
brew install pyenv
brew install nvm
brew install rbenv
brew install ruby-build

# 软连接
ln -s ~/code/about-mac/zsh/.zshrc ~/.zshrc
ln -s ~/code/about-mac/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/code/about-mac/zsh/.zsh_plugins.txt ~/.zsh_plugins.txt
ln -s ~/code/about-mac/zsh/.vimrc ~/.vimrc
ln -s ~/code/about-mac/zsh/atuin.toml ~/.config/atuin/config.toml
ln -s ~/code/about-mac/zsh/lsd.yaml ~/.config/lsd/config.yaml
