-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme_dirs = { '/home/manu/.wezterm/themes' }
config.color_scheme = 'Tiniri Dark'

config.font = wezterm.font({
  family='Monaspace Neon',
  harfbuzz_features={ 'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08' },
})

config.font_size = 14.0

config.window_decorations = 'RESIZE'

config.hide_tab_bar_if_only_one_tab = true

config.default_cursor_style = "SteadyUnderline"

config.initial_rows = 32
config.initial_cols = 80

return config
