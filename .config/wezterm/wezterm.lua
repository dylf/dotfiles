local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font_with_fallback({
	{ family = "SpaceMono Nerd Font" },
	{ family = "Comic Mono" },
	{ family = "Iosevka" },
	{
		family = "VictorMono Nerd Font",
		weight = "Medium",
	},
})

config.font_size = 18.0
config.harfbuzz_features = { "calt=0", "clig=1", "liga=0" }

config.color_scheme = "rose-pine"

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.force_reverse_video_cursor = true
config.window_padding = { left = 4, right = 4, top = 0, bottom = 0 }

config.background = {
	{
		source = {
			File = "Pictures/termbg.png",
		},
		hsb = {
			brightness = 0.00,
		},
		horizontal_align = "Center",
	},
}

--- Disable bg
config.background = {}
config.window_background_opacity = 0.95

config.adjust_window_size_when_changing_font_size = false

return config
