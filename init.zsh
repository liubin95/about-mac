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
brew install nvim

# cask
brew install clash-verge-rev

# 软连接
DIR=$(pwd)
ln -sf "$DIR"/zsh/.zshrc "$HOME"/.zshrc
ln -sf "$DIR"/zsh/.zsh_plugins.txt "$HOME"/.zsh_plugins.txt
ln -sf "$DIR"/zsh/atuin.toml "$XDG_CONFIG_HOME"/atuin/config.toml
ln -sf "$DIR"/zsh/starship.toml "$XDG_CONFIG_HOME"/starship.toml

ln -sf "$DIR"/lsd "$XDG_CONFIG_HOME"
ln -sf "$DIR"/k9s "$XDG_CONFIG_HOME"
ln -sf "$DIR"/nvim "$XDG_CONFIG_HOME"
mkdir "$XDG_CONFIG_HOME"/tmux
ln -sf "$DIR"/tmux/tmux.conf "$XDG_CONFIG_HOME"/tmux/tmux.conf

ln -sf "$DIR"/ghostty "$XDG_CONFIG_HOME"

ln -sf "$DIR/git/.gitconfig" "$HOME/.gitconfig"
