# nvm start [op]
# 移动到zsh_plugins.txt 使用 kind:defer
export NVM_DIR="$HOME/.nvm"
# nvm end

# bat start [op]
command -v bat >/dev/null \
  && alias cat='bat --decorations=never --paging=never'
# bat end

# atuin
command -v atuin >/dev/null \
  && eval "$(atuin init zsh)"

# uv
. "$HOME/.local/bin/env"
command -v uv >/dev/null \
  && eval "$(uv generate-shell-completion zsh)"
# uv end
