-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme_dirs = { '/home/manu/.wezterm/themes' }
config.color_scheme = 'Tiniri Dark'

config.font = wezterm.font 'Fira Code'
config.font_size = 14.0

config.window_decorations = 'NONE'

config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }

config.hide_tab_bar_if_only_one_tab = true

config.default_cursor_style = "SteadyUnderline"

config.initial_rows = 32
config.initial_cols = 128

return config
