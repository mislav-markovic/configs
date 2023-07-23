local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Macchiato'

config.font = wezterm.font('UbuntuMono Nerd Font')
config.font_size = 13.7

config.default_prog = { 'C:\\Program Files\\nu\\bin\\nu.exe'}

config.keys = {
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.colors = {
  tab_bar = {
    background = '#24273a',

    active_tab = {
      bg_color = '#4c566a',
      fg_color = '#88c0d0'
    }
  }
}

return config
