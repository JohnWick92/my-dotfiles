local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.enable_scroll_bar = true
config.enable_wayland = false
config.color_scheme = "Kanagawa Dragon (Gogh)"
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", scale = 1.2 },
	{ family = "IosevkaTerm Nerd Font", scale = 1.2 },
	{ family = "MesloLGS NF", scale = 1.3 },
})
config.window_background_opacity = 0.9
return config
