local wezterm = require 'wezterm'
local config = {}

-- Color scheme
-- https://github.com/catppuccin/wezterm
config.color_scheme = 'Catppuccin Latte'

-- Font
config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })
config.font_size = 15.0

-- Tab bar
config.tab_bar_at_bottom = true
-- When set to false, the tab bar is rendered using a retro aesthetic using the main terminal font.
config.use_fancy_tab_bar = false

-- 设置窗口背景透明度，值范围为 0.0（完全透明）到 1.0（不透明）
config.window_background_opacity = 1.0

return config
