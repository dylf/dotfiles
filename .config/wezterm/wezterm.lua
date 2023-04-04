local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("VictorMono Nerd Font", { weight = "Medium" })
config.font_size = 15.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.color_scheme = "carbonfox"

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.force_reverse_video_cursor = true

config.background = {
	{
		source = {
			File = "Pictures/termbg.png",
		},
		hsb = {
			brightness = 0.01,
		},
	},
}

config.adjust_window_size_when_changing_font_size = false

return config
