-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Variables Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local colors = require("config.colors")

-- https://wiki.hyprland.org/Configuring/Variables/#general

hl.gesture({
    fingers = 4,
    direction = "horizontal",
    action = "workspace",
})

hl.gesture({
    fingers = 3,
    direction = "down",
    action = "close",
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = "fullscreen",
})

hl.gesture({
    fingers = 3,
    direction = "left",
    action = "float",
})
hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 5,
        border_size = 3,
        col = {
            active_border = { colors = { colors.cachylgreen, colors.cachylblue }, angle = 45 },
            inactive_border = colors.cachymblue,
        },
        layout = "dwindle", -- master|dwindle
        snap = {
            enabled = true,
        },
    },
    -- removed old gestures {} block — Hyprland 0.39+ uses gesture = … lines
    -- https://wiki.hyprland.org/Configuring/Variables/#group
    group = {
        col = {
            border_active = colors.cachydgreen,
            border_inactive = colors.cachylgreen,
            border_locked_active = colors.cachymgreen,
            border_locked_inactive = colors.cachydblue,
        },
        -- https://wiki.hyprland.org/Configuring/Variables/#groupbar
        groupbar = {
            font_family = "\"Fira Sans\"",
            text_color = colors.cachydblue,
            col = {
                active = colors.cachydgreen,
                inactive = colors.cachylgreen,
                locked_active = colors.cachymgreen,
                locked_inactive = colors.cachydblue,
            },
        },
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
        font_family = "\"Fira Sans\"",
        splash_font_family = "\"Fira Sans\"",
        disable_hyprland_logo = true,
        col = {
            splash = colors.cachylgreen,
        },
        background_color = colors.cachydblue,
        enable_swallow = true,
        swallow_regex = "^(nautilus|nemo|thunar|btrfs-assistant.)$",
        focus_on_activate = true,
        vrr = 2,
        initial_workspace_tracking = 0,
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#render
    render = {
        direct_scanout = true,
    },
    -- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    dwindle = {
        special_scale_factor = 0.8,
        preserve_split = true,
    },
    -- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    master = {
        new_status = "master",
        special_scale_factor = 0.8,
    },
    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                    Gestures                                 ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    -- 4-finger horizontal swipe to switch workspaces
    -- 3-finger swipe down closes active window
    -- 3-finger swipe up toggles fullscreen
    -- 3-finger swipe left toggles float/tile
})
