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
DIR=$(pwd)
ln -sf "$DIR"/zsh/.zshrc "$HOME"/.zshrc
ln -sf "$DIR"/zsh/.p10k.zsh "$HOME"/.p10k.zsh
ln -sf "$DIR"/zsh/.zsh_plugins.txt "$HOME"/.zsh_plugins.txt
ln -sf "$DIR"/zsh/.vimrc "$HOME"/.vimrc
ln -sf "$DIR"/zsh/atuin.toml "$XDG_CONFIG_HOME"/atuin/config.toml
ln -sf "$DIR"/zsh/lsd.yaml "$XDG_CONFIG_HOME"/lsd/config.yaml

ln -sf "$DIR"/k9s/views.yaml "$XDG_CONFIG_HOME"/k9s/views.yaml
ln -sf "$DIR"/k9s/config.yaml "$XDG_CONFIG_HOME"/k9s/config.yaml
ln -sf "$DIR"/k9s/plugins.yaml "$XDG_CONFIG_HOME"/k9s/plugins.yaml
ln -sf "$DIR"/k9s/kubectl-plugins/kubectl-tspin /usr/local/bin/kubectl-tspin
ln -sf "$DIR"/k9s/skins/dracula.yaml "$XDG_CONFIG_HOME"/k9s/skins/dracula.yaml
