# docker config start
alias docker=podman
alias docker-compose=podman-compose
export PODMAN_COMPOSE_PROVIDER=/opt/homebrew/bin/podman-compose
# docker config end

# k8s config start
alias k='kubectl'
# [op]
alias kl='kubectl -n light'
alias km='kubectl -n monitor'
# completion
command -v kubectl >/dev/null \
  && source <(kubectl completion zsh)
# k8s config end
