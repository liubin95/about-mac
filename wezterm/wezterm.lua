local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Catppuccin Latte'
-- 您可以指定一些参数来影响字体选择；
-- 例如，这选择粗体、斜体字体变体。
config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })


config.font_size = 14.0

-- When set to false, the tab bar is rendered using a retro aesthetic using the main terminal font.
config.use_fancy_tab_bar = false

config.mouse_bindings = {
  -- CMD-click will open the link under the mouse cursor
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CMD',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

return config
