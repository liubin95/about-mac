# mac

## 软件

### 常用

- [Homebrew 安装软件](https://brew.sh)
- [alfred 搜索和集成](https://www.alfredapp.com/)
- [CleanMyMac X](https://cleanmymac.com/)
- ~~[Snipaste 截图软件](https://www.snipaste.com/)~~
- [截图软件 iShot](https://apps.apple.com/us/app/ishot-screenshot-recording-ocr/id1485844094?mt=12)
- ~~[自动切换输入法](https://github.com/itsuhane/SwitchKey)~~
- [自动切换输入法](https://inputsource.pro/zh-CN)
- [Microsoft Remote Desktop 远程连接Windows](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac)
- [Logitech Options 罗技客户端](https://www.logitech.com.cn/zh-cn/software/options.html)
- [numi 计算器](https://github.com/nikolaeu/numi/wiki)
- [draw.io 画图软件](https://app.diagrams.net/)
- ~~[run cat](https://apps.apple.com/cn/app/runcat/id1429033973?mt=12)~~
- dockx
- ~~[yabai 窗口编排](https://github.com/koekeishiya/yabai)~~
- loop 窗口编排
- [CheatSheet 长按 Command 键就可以显示所有的快捷键，也可以直接点击调用](https://www.mediaatelier.com/CheatSheet/)
- [配色主题](https://draculatheme.com/)
- [按键和鼠标的记录](https://whatpulse.org/)
- [窗口时间的记录](https://github.com/ActivityWatch/activitywatch)

### 输入法

## [开源输入法 squirrel](https://github.com/rime/squirrel)

### [plum squirrel的管理器](https://github.com/rime/plum)

### [长期更新的词库](https://github.com/iDvel/rime-ice?tab=readme-ov-file)

### 开发

#### 软件

- [idea toolbox](https://www.jetbrains.com/toolbox-app/)

#### 命令行

- ~~[mac的系统服务管理](https://www.launchd.info/)~~
- [iterm2 终端](https://iterm2.com/)
- ~~[oh my zsh zsh的工具](https://ohmyz.sh/)~~
- ~~[zplug zsh 插件管理](https://github.com/zplug/zplug)~~
- ~~[zplug 使用](https://www.jkg.tw/p2965/)~~
- [zsh插件管理 antidote](https://github.com/mattmc3/antidote)
- [命令历史记录 atuin](https://github.com/ellie/atuin)
- [lsd 功能强大的ls](https://github.com/lsd-rs/lsd)
- [tailspin 日志查看工具](https://github.com/bensadeh/tailspin)
- [mac 上的命令行](https://git.herrbischoff.com/awesome-macos-command-line/about/)

#### 容器

- todo [podman 比docker消耗资源少](https://podman.io/)
- [miniKube k8s的本地环境](https://minikube.sigs.k8s.io/docs/)
- [k9s k8s的命令行工具](https://k9scli.io/)

#### 网络

- [绘制多个主机的 ping 时间图,通过标志绘制命令的执行时间--cmd](https://github.com/orf/gping)
- [proxyman mac平台抓包软件](https://proxyman.io/)
- [替换curl的http cli 工具](https://github.com/httpie/cli)
- [mtr 网络诊断工具](https://www.bitwizard.nl/mtr/)

#### vim

- [插件管理](https://github.com/VundleVim/Vundle.vim)
- [插件搜索](https://vimawesome.com)

#### zsh

- [插件集合](https://github.com/unixorn/awesome-zsh-plugins)

## 操作

- terminal 打开 finder

```shell
# 打开当前目录
open .
# 打开特定目录
open /tmp
# 打开app
open -a WeChat
# 打开app和参数
open -a LibreOffice 日常函件浏览器指标10.10\(1\).xlsx
# open url
open -a "Google Chrome.app" http://127.0.0.1:1234
```

- Finder

```shell
# 显示隐藏文件
# shift + command + .
# 跳转路径
# command + shift + g

```

- 剪切板

```shell
# 保存到剪切板
base64 info.png | pbcopy
# 输出剪切板
pbpaste | base64 -d > info.png
```
