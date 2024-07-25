#!/bin/zsh
set -e

# 日常使用
# 命令行的历史记录
brew install atuin
brew install lsd
brew install jq
brew install yq
brew install antidote
# 高亮的tail
brew install tailspin
brew install k9s

# cask
brew install clash-verge-rev
brew install switchkey

# 语言版本管理 [op]
brew install pyenv
brew install nvm
brew install rbenv
brew install ruby-build

# 软连接
ln -s ~/code/about-mac/zsh/.zshrc "$HOME"/.zshrc
ln -s ~/code/about-mac/zsh/.p10k.zsh "$HOME"/.p10k.zsh
ln -s ~/code/about-mac/zsh/.zsh_plugins.txt "$HOME"/.zsh_plugins.txt
ln -s ~/code/about-mac/zsh/.vimrc "$HOME"/.vimrc
ln -s ~/code/about-mac/zsh/atuin.toml "$XDG_CONFIG_HOME"/atuin/config.toml
ln -s ~/code/about-mac/zsh/lsd.yaml "$XDG_CONFIG_HOME"/lsd/config.yaml
ln -s ~/code/about-mac/zsh/k9s.yaml "$XDG_CONFIG_HOME"/k9s/views.yaml
