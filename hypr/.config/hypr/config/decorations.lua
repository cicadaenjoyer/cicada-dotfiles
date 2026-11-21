-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { BACYAN, BABLUE },
                angle = 45,
            },
            inactive_border = BAGRAY,
        },
    },
    group = {
        col = {
            border_active = BAPINK,
            border_inactive = BAGRAY,
            border_locked_active = BANAVY,
            border_locked_inactive = BAGRAY,
        },
        groupbar = {
            col = {
                active = BAPINK,
                inactive = BAGRAY,
                locked_active = BANAVY,
                locked_inactive = BAGRAY,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 10,
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})
