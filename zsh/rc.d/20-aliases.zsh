# tldr 的设置
alias cman="tldr"

# 设置个人别名，覆盖 oh-my-zsh 库提供的别名，
# 插件和主题。别名可以放在这里，不过 oh-my-zsh
# 鼓励用户在 ZSH_CUSTOM 文件夹中定义别名。
# 要获取活动别名的完整列表，请运行 `alias`。
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> lsd start 2024年7月19日 >>> [op]
alias ll="lsd -l"
alias lla="lsd -al"
alias l="lsd -al"
alias lt='lsd --tree'
alias lt2='lsd --tree --depth 2'
# <<< lsd end <<<

alias zshconfig="code ~/.zshrc"
alias zshup="source ~/.zshrc"

# tmuxinator 相关的别名
alias mux=tmuxinator
# yarn 相关的别名
alias y="yarn"
# python 相关的别名
alias py="python"
# watch start
# 通过将 watch 本身别名为 alias watchh='watch ' （带有尾随空格）
# 然后使用 watchh k ，可以强制当前交互式 shell 展开 k 在传递给 watch 之前。
alias watchh='watch '
#watch end

# safe-rm
# 通过设置一个别名 可以直接删除的文件
alias unsafe-rm="command rm -i"
# safe-rm end
