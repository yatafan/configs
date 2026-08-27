-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Monitor Configuration                   ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Monitor wiki https://wiki.hyprland.org/Configuring/Monitors/

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "1",
    transform = 3,
})

-- If you need to scale things like steam etc, please uncomment these lines.
--xwayland {
--  force_zero_scaling = true       # Unscale XWayland
--}

-- Adjust GDK_SCALE accordingly to your liking.
--env = GDK_SCALE, 2                # GDK Scaling Factor (no fractional scaling)

-- Electron based apps use X11 as default, auto should detect wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
