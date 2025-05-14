-- https://wezterm.org/config/files.html
local wezterm = require 'wezterm'

function get_title(tab)
  -- if tab.tab_title is empty, return tab.active_pane.title
  local title = tab.active_pane.title
  if tab.tab_title ~= "" then
    title = tab.tab_title
  end
  return ' ' .. tab.tab_index .. ':' .. title .. ' '
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover)
  -- 检查用户变量是否存在 然后设置tab_color
  local tab_color = tab.active_pane.user_vars.tab_color or ""

  if tab.is_active then
    return {
      { Background = { Color = tab_color } },
      { Attribute = { Intensity = "Normal" } },
      { Attribute = { Italic = false } },
      { Text = get_title(tab) },
    }
  else
    return {
      { Background = { Color = tab_color } },
      { Attribute = { Intensity = "Bold" } },
      { Attribute = { Italic = true } },
      { Text = get_title(tab) },
    }
  end
end)


local config = {}

-- Color scheme
-- https://github.com/catppuccin/wezterm
config.color_scheme = 'Catppuccin Latte'

-- Font
config.font =
    wezterm.font('JetBrains Maple Mono', { weight = 'Bold', italic = true })
config.font_size = 15.0

-- Tab bar
config.tab_bar_at_bottom = true
-- When set to false, the tab bar is rendered using a retro aesthetic using the main terminal font.
config.use_fancy_tab_bar = false

-- 设置窗口背景透明度，值范围为 0.0（完全透明）到 1.0（不透明）
config.window_background_opacity = 1.0

config.keys = {
  -- copy mode
  { key = 'C', mods = 'CMD', action = wezterm.action.ActivateCopyMode },
  -- 开启一个pane
  { key = 'T', mods = 'CMD', action = wezterm.action.SplitPane { direction = 'Right', size = { Percent = 50 } } }
}

return config
