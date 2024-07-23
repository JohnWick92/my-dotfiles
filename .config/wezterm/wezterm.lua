local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.enable_scroll_bar = true
config.enable_wayland = false
config.color_scheme = "Tokyo Night"
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", scale = 1.2 },
	{ family = "IosevkaTerm Nerd Font", scale = 1.2 },
	{ family = "MesloLGS NF", scale = 1.3 },
})
config.window_background_opacity = 0.9
config.leader = { key = ";", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	{ key = ";", mods = "LEADER | CTRL", action = act.SendKey({ key = ";", mods = "CTRL" }) },
	{ key = "s", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "v", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
	{ key = "q", mods = "LEADER", action = act.CloseCurrentPane({ confirm = false }) },
	{ key = "t", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "[", mods = "CTRL", action = act.ActivateTabRelative(-1) },
}
-- Uncomment this if you are running in wsl
-- config.default_domain = "WSL:Ubuntu-24.04"
return config
