-- Environmental variables (for reference https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/)
-- No UWSM: session environment variables live here (shared), machine-only ones in environment/<hostname>.lua

-- if you have an NVIDIA GPU uncomment the following lines:

-- hl.env("GBM_BACKEND", "nvidia-drm") -- force GBM as a backend
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia") -- force GBM as a backend
-- hl.env("LIBVA_DRIVER_NAME", "nvidia") -- Hardware acceleration on NVIDIA GPUs
-- hl.env("__GL_GSYNC_ALLOWED", "1") -- Controls if G-Sync capable monitors should use Variable Refresh Rate (VRR)

-- Shared session environment
hl.env("QT_QPA_PLATFORM", "wayland;xcb")       -- Qt apps: Wayland first, X11 fallback
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")        -- lets qt6ct (and Noctalia's Qt colors) apply
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto") -- Electron apps (Discord, etc.) run native Wayland
hl.env("BROWSER", BROWSER)                      -- reuses BROWSER from variables.lua
