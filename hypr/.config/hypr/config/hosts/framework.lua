-- Monitor Variables
MONITOR1 = "DP-1"
MONITOR2 = "DP-2"
MONITOR3 = ""
PRIMARY_MONITOR = MONITOR1

-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = "MONITOR1",
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

hl.monitor({
    output    = MONITOR1,          -- DP-1, Odyssey G50SF
    mode      = "2560x1440@179.95",
    position  = "0x0",
    scale     = "1",
    bitdepth  = 10,
    cm        = "srgb",
})

hl.monitor({
    output    = MONITOR2,          -- DP-2, Odyssey G5
    mode      = "2560x1440@179.95",
    position  = "2560x0",
    scale     = "1",
    bitdepth  = 10,
    cm        = "srgb",
})
