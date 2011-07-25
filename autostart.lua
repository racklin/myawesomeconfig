-- {{{ autostart
function run(app)
	awful.util.spawn_with_shell(app)
end

function run_once(app)
	appname = string.gmatch(app, "(%w+)")()
	awful.util.spawn_with_shell("pgrep -u $USER -x " .. appname .. " || " .. app .. "")
end

function autorun(apps, flag)
	if flag == nil or flag == true then
		for idx = 1, #apps do
			run_once(apps[idx])
		end
	end
end

autorun({
    "gnome-settings-daemon",
    "nm-applet",
    "gnome-power-manager",
    "gnome-volume-manager",
    "gnome-volume-control-applet",
    "/home/rack/bin-x86_64/wmname LG3D",
    "xcompmgr",
    "synapse -s",
    "dropbox start -i",
    "/usr/share/ailurus/support/show-a-linux-skill-bubble",
    "parcellite",
    "xscreensaver -no-splash",
    "xrdb "..config_dir.."/Xresources",
   -- "nautilus -n"
})
