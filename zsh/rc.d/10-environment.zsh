# User configuration
export XDG_STATE_HOME=$HOME/.config/state
export XDG_CONFIG_HOME=$HOME/.config
# https://hf-mirror.com/
export HF_ENDPOINT=https://hf-mirror.com

# ksw 的环境变量
export KUBECONFIG="$HOME/.kube/admin.conf-dev.yaml"
export KSW_ENVIRONMENTS="dev prd minikube heytea mingji"
export KSW_ENVIRONMENTS_PRD="prd heytea mingji"

# You may need to manually set your language environment
export LANG=zh_CN.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
export K9S_EDITOR='nvim'
alias vim='nvim'

# where proxy
export PROXY_PORT=7890
# podman machine 会复制环境变量 https_proxy 并且替换为 host.containers.internal
# 需要设置 host.containers.internal 为 no_proxy
export no_proxy="host.containers.internal,*.zf.link,localhost"
# auto proxy
nc -z localhost $PROXY_PORT >/dev/null 2>&1 \
  && proxy silent
