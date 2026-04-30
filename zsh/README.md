## 快捷键

- ctrl + a: 光标移动到行首
- ctrl + e: 光标移动到行尾
- ctrl + u: 删除整行
- ctrl + command + f : 切换全屏

## 配置结构

- `.zshrc` 只负责按顺序加载 `rc.d/*.zsh`
- `rc.d/00-antidote.zsh`：插件和补全
- `rc.d/10-environment.zsh`：环境变量、编辑器、代理
- `rc.d/20-aliases.zsh`：常用别名
- `rc.d/30-tooling.zsh`：bat、atuin、pnpm、uv
- `rc.d/40-languages.zsh`：pyenv、Java、rbenv
- `rc.d/50-containers-k8s.zsh`：podman、kubectl
- `rc.d/60-functions.zsh`：自定义函数
- `rc.d/70-setopt.zsh`：zsh 选项
- `rc.d/90-prompt.zsh`：starship prompt
