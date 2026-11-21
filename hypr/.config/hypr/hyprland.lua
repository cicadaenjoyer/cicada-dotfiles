-- CachyOS Hyprland Configuration

-- getting system name
local hostname = "shogun"
local hostnameFile = io.open("/etc/hostname", "r")
if hostnameFile then
    hostname = hostnameFile:read("l") or hostname
    hostnameFile:close()
end

require("config.animations")
require("config.autostart")
require("config.colors")
require("config.decorations")
require("config.variables")
require("config.hosts." .. hostname) -- monitors + MONITOR vars
require("config.environment")
require("config.inputs")
require("config.binds")
require("config.misc")
require("config.windowrules")
require("config.workspaces")
