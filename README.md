# mac

## 软件

### 常用

- [Snipaste 截图软件](https://www.snipaste.com/)
- [Logitech Options 罗技客户端](https://www.logitech.com.cn/zh-cn/software/options.html)
- [Homebrew 安装软件](https://brew.sh)
- [alfred 搜索和集成](https://www.alfredapp.com/)
- [numi 计算器](https://github.com/nikolaeu/numi/wiki)
- [Microsoft Remote Desktop 远程连接Windows](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac)
- [draw.io 画图软件](https://app.diagrams.net/)
- [CleanMyMac X](https://cleanmymac.com/)
- ~~[run cat](https://apps.apple.com/cn/app/runcat/id1429033973?mt=12)~~
- dockx
- [yabai 窗口编排](https://github.com/koekeishiya/yabai)
- [CheatSheet 长按 Command 键就可以显示所有的快捷键，也可以直接点击调用](https://www.mediaatelier.com/CheatSheet/)
- [配色主题](https://draculatheme.com/)
- [自动切换输入法](https://github.com/itsuhane/SwitchKey)

### 开发

- ~~[mac的系统服务管理](https://www.launchd.info/)~~
- [iterm2 终端](https://iterm2.com/)
- ~~[AppleScript文档 可以操作app的脚本语言](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html)~~
- [idea toolbox](https://www.jetbrains.com/toolbox-app/)
- [oh my zsh zsh的工具](https://ohmyz.sh/)
- [zplug zsh 插件管理](https://github.com/zplug/zplug)
- [zplug 使用](https://www.jkg.tw/p2965/)
- [命令历史记录](https://github.com/ellie/atuin)
- [podman 比docker消耗资源少](https://podman.io/)
- [lsd 功能强大的ls](https://github.com/lsd-rs/lsd)
- [绘制多个主机的 ping 时间图,通过标志绘制命令的执行时间--cmd](https://github.com/orf/gping)
- [proxyman mac平台抓包软件](https://proxyman.io/)
- [替换curl的http cli 工具](https://github.com/httpie/cli)
- [mac 上的命令行](https://git.herrbischoff.com/awesome-macos-command-line/about/)

##### vim

- [插件管理](https://github.com/VundleVim/Vundle.vim)
- [插件搜索](https://vimawesome.com)

#### ohmyzsh 插件

[插件集合](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

```shell
# zplug plugins
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/vscode", from:oh-my-zsh
zplug "plugins/dirhistory", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
```

#### ohmyzsh 主题

- [p10k](https://github.com/romkatv/powerlevel10k)

## 操作

### WI-FI

```shell
# 打开 WI-FI
networksetup -setairportpower en0 on
# Create a symbolic link to the airport command for easy access:
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport
# 扫描 WiFi
airport -s
# 加入 WI-FI
networksetup -setairportnetwork en0 WIFI_SSID WIFI_PASSWORD

```


### Finder and Terminal

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
```

- 剪切板

```shell
# 保存到剪切板
base64 info.png | pbcopy
# 输出剪切板
pbpaste | base64 -d > info.png
```

## [homebrew](https://brew.sh)

安装和管理软件，神器！！
