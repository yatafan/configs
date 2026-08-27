-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Defaults Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

return {
    -- General
    filemanager = "dolphin",
    applauncher = "wofi",
    terminal = "alacritty",
    idlehandler = "swayidle -w timeout 300 'swaylock -f -c 000000' before-sleep 'swaylock -f -c 000000'",

    -- Screenshots
    shot_region = "grimblast copy area",
    shot_window = "grimblast copy active",
    shot_screen = "grimblast copy output",
}
