-- CachyOS Hyprland Configuration

-- getting system name
local hostname = "shogun"
local hostnameFile = io.open("/etc/hostname", "r")
if hostnameFile then
    hostname = hostnameFile:read("l") or hostname
    hostnameFile:close()
end

-- Per-machine config lives in config/<category>/<hostname>.lua.
local configDir = (os.getenv("XDG_CONFIG_HOME") or (os.getenv("HOME") .. "/.config")) .. "/hypr/config/"
local function requireHost(category)
    local f = io.open(configDir .. category .. "/" .. hostname .. ".lua", "r")
    if f then
        f:close()
        require("config." .. category .. "." .. hostname)
    end
end

-- Host files add extra commands here; autostart.lua runs them all on start
AUTOSTART_CMDS = {}

require("config.animations")
requireHost("autostart")
require("config.autostart")
require("config.colors")
require("config.decorations")
require("config.variables")
requireHost("monitors")
require("config.environment")
requireHost("environment")
require("config.inputs")
require("config.binds")
requireHost("binds")
require("config.misc")
require("config.windowrules")
require("config.workspaces")
