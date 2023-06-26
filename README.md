# mac

## 软件

### 常用

- [Snipaste 截图软件](https://www.snipaste.com/)
- [Logitech Options 罗技客户端](https://www.logitech.com.cn/zh-cn/software/options.html)
- [Homebrew 安装软件](https://brew.sh)
- [alfred 搜索和集成](https://www.alfredapp.com/)
- [numi 计算器](https://github.com/nikolaeu/numi/wiki)
- [Microsoft Remote Desktop Beta 远程连接Windows](https://install.appcenter.ms/orgs/rdmacios-k2vy/apps/microsoft-remote-desktop-for-mac/distribution_groups/all-users-of-microsoft-remote-desktop-for-mac)
- [draw.io 画图软件](https://app.diagrams.net/)
- [CleanMyMac X](https://cleanmymac.com/)
- [run cat](https://apps.apple.com/cn/app/runcat/id1429033973?mt=12)
- [yabai 窗口编排](https://github.com/koekeishiya/yabai)
- [CheatSheet 长按 Command 键就可以显示所有的快捷键，也可以直接点击调用](https://www.mediaatelier.com/CheatSheet/)
- [配色主题](https://draculatheme.com/)

### 开发

- [mac的系统服务管理](https://www.launchd.info/)
- [iterm2 终端](https://iterm2.com/)
- [AppleScript文档 可以操作app的脚本语言](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html)
- [idea toolbox](https://www.jetbrains.com/toolbox-app/)
- [oh my zsh zsh的工具](https://ohmyz.sh/)
- [zplug zsh 插件管理](https://github.com/zplug/zplug)
- [zplug 使用](https://www.jkg.tw/p2965/)
- [命令历史记录](https://github.com/ellie/atuin)
- [podman 比docker消耗资源少](https://podman.io/)
- [lsd 功能强大的ls](https://github.com/lsd-rs/lsd)

##### vim

- [插件管理](https://github.com/VundleVim/Vundle.vim)

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

- finder 打开 terminal 使用 AppleScript

```osascript
tell application "Finder"
	set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
end tell
CD_to(dir_path)
on CD_to(theDir)
	tell application "iTerm"
		activate
		set win to (create window with default profile)
		set sesh to (current session of win)
		tell sesh to write text "cd " & theDir & ";clear"
	end tell
end CD_to
```

## launchd

- [文档](https://www.launchd.info/)

### 编写xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.liubin.app</string>
        <key>Program</key>
        <string>/Users/liubin/app-mac/app</string>
        <key>StandardOutPath</key>
        <string>/tmp/app.stdout</string>
        <key>StandardErrorPath</key>
        <string>/tmp/app.stderr</string>
        <!--     <key>KeepAlive</key>
            <true/> -->
    </dict>
</plist>
```

### load服务

```shell
launchctl load ~/Library/LaunchAgents/com.liubin.app.plist
launchctl unload ~/Library/LaunchAgents/com.example.app.plist
```

### 启动服务

```shell
launchctl start com.example.app
launchctl stop com.example.app
```

## homebrew
安装和管理软件，神器！！
