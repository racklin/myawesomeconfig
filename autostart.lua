-- {{{ autostart
presets.autorun({
    "gnome-settings-daemon",
    "nm-applet",
    "gnome-power-manager",
    "gnome-volume-manager",
    "gnome-volume-control-applet",
    "/home/rack/bin-x86_64/wmname LG3D",
    "xcompmgr -cF",
    "synapse -s",
    "dropbox start -i",
    "/usr/share/ailurus/support/show-a-linux-skill-bubble",
    "parcellite",
    "xrdb "..config_dir.."/Xresources",
   -- "nautilus -n"
})
