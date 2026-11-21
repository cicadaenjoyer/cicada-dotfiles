-- shogun-only binds
local mainMod = "SUPER"

-- Blue Archive lobby wallpaper
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("sh -c '~/.local/bin/ba-lobby next'")) -- next Blue Archive lobby
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("sh -c '~/.local/bin/ba-lobby track'")) -- toggle lobby mouse tracking
