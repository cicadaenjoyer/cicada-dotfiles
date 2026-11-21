-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("noctalia")
    hl.exec_cmd("sh -c 'sleep 2; ~/.local/bin/ba-lobby start'") -- Blue Archive Spine lobby wallpaper
    hl.exec_cmd("canberra-gtk-play -i desktop-login -d login") -- Blue Archive login chime
    hl.exec_cmd("xhost +SI:localuser:root")
end)
