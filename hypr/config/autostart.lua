-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Autostart Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local defaults = require("config.defaults")

-- Autostart wiki https://wiki.hyprland.org/Configuring/Keywords/#executing

hl.on("hyprland.start", function()
    hl.exec_cmd("swaybg -o \\* -i /usr/share/wallpapers/cachyos-wallpapers/Skyscraper.png -m fill")
    hl.exec_cmd("waybar")
    hl.exec_cmd("fcitx5 -d")
    hl.exec_cmd("mako")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("bash -c \"mkfifo /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob && tail -f /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob | wob & disown\" &")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    hl.exec_cmd("systemctl --user import-environment")
    hl.exec_cmd("dbus-update-activation-environment --systemd")
    hl.exec_cmd(defaults.idlehandler)
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("eww daemon")
end)
