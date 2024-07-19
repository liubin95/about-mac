# 统计zshrc加载时间
# zmodload zsh/zprof
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# >>> antidote start 2024年7月19日 >>> [op]
# Source zstyles you might use with antidote.
[[ -e ${HOME}/.zstyles ]] && source ${HOME}/.zstyles
# load antidote
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
antidote load ${HOME}/.zsh_plugins.txt
# Enable completion.
autoload -Uz compinit && compinit
# <<< antidote end <<<

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# where proxy
export PROXY_PORT=7890
proxy () {
  export https_proxy=http://127.0.0.1:$PROXY_PORT
  export http_proxy=http://127.0.0.1:$PROXY_PORT
  export all_proxy=socks5://127.0.0.1:$PROXY_PORT
  git config --global http.proxy http://127.0.0.1:$PROXY_PORT
  git config --global https.proxy https://127.0.0.1:$PROXY_PORT
  if [ "$1" != "silent" ]; then
    echo "All Proxy on"
  fi
}
# auto proxy
nc -z localhost $PROXY_PORT > /dev/null 2>&1 && proxy silent

# where noproxy
unproxy () {
  unset https_proxy
  unset http_proxy
  unset all_proxy
  git config --global --unset http.proxy
  git config --global --unset https.proxy
  echo "All Proxy off"
}

# hummus 的编译需要设置这个环境变量 [op]
export EXTRA_NODE_PRE_GYP_FLAGS=""

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> lsd start 2024年7月19日 >>> [op]
alias ll="lsd -l"
alias lla="lsd -al"
alias lt='lsd --tree'
alias lt2='lsd --tree --depth 2'
# <<< lsd end <<<

alias zshconfig="code ~/.zshrc"
alias zshup="source ~/.zshrc"

#cman start
alias cman='man -M /usr/local/share/man/zh_CN'
#cman end

#watch start
# 通过将 watch 本身别名为 alias watchh='watch ' （带有尾随空格）
# 然后使用 watchh k ，可以强制当前交互式 shell 展开 k 在传递给 watch 之前。
alias watchh='watch '
#watch end

# nvm start [op]
# 移动到zsh_plugins.txt 使用 kind:defer
export NVM_DIR="$HOME/.nvm"
# nvm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# atuin
command -v atuin >/dev/null && eval "$(atuin init zsh)"

# pyenv start
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
command -v pyenv >/dev/null && eval "$(pyenv init -)"
# pyenv end

# android start [op]
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# android end

# ruby start [op]
export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com
command -v rbenv >/dev/null && eval "$(rbenv init - zsh)"
# ruby end

# docker config start
export BUILDKIT_PROGRESS=plain
# docker config end

# k8s config start
export KUBECONFIG=~/.kube/admin.conf.yaml
alias k='kubectl'
# completion
command -v kubectl >/dev/null && source <(kubectl completion zsh)
command -v flux >/dev/null && source <(flux completion zsh)
# k8s config end

# >>> conda initialize >>> [op]
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 统计zshrc加载时间
# zprof
