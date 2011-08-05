-- This is used later as the default terminal and editor to run.
--terminal = "x-terminal-emulator"
terminal = "urxvtcd"
editor = os.getenv("EDITOR") or "editor"
editor_cmd = terminal .. " -e " .. editor
filemanager_mc = terminal .. " -e mc"

config_dir = awful.util.getdir("config")
themes_dir = config_dir.."/themes"
home_dir = os.getenv("HOME")


-- commands
cmd_shutdown="dbus-send --print-reply --system --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop"
cmd_reboot="dbus-send --print-reply --system --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart"
cmd_suspend="dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
cmd_lock= terminal .. " -e xscreensaver-command --lock"



-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"
--altkey = "Mod1"

