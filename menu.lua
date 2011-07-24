-- {{{ Menu
-- Create a laucher widget and a main menu
mynetworkmenu = {
	{ "firefox", "firefox" },
	{ "filezilla", "filezilla" },
	{ "pidgin" , "pidgin" },
	{ "skype", "skype" }
}

myeditorsmenu = {
	{ "vim", terminal .. " -e vim" },
	{ "geany", "geany" }
}

myutilitiesmenu = {
	{ "gimp", "gimp" },
	{ "audacity", "audacity" },
	{ "xfburn", "xfburn" },
	{ "truecrypt", "truecrypt" }
}

monitormenu = {
	{ "scroff", "xrandr --output LVDS --off" },
	{ "scron", "xrandr --output LVDS --auto" },
	{ "scrmax", "xrandr --output VGA-0 --preferred" }
}

mysystemmenu = {
	{ "monitor", monitormenu },
	{ "htop", terminal .. " -e htop" },
	{ "kill", "xkill" }
}

myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}


myleavemenu = awful.menu({ items = {
					{ "quit", awesome.quit },
					{ "lock", cmd_lock },
					{ "shutdown", cmd_shutdown },
					{ "suspend", cmd_suspend }
 				 }
})

mymainmenu = awful.menu({ items = { 
				    { "Network",  mynetworkmenu },
				    { "Editors",  myeditorsmenu },
				    { "Utilities", myutilitiesmenu },
				    { "System",  mysystemmenu},
				    { "Debian", debian.menu.Debian_menu.Debian },
				    { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal },
					{ "lock", cmd_lock },
					{ "shutdown", cmd_shutdown },
					{ "suspend", cmd_suspend }
                                  }
                        })


mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })
-- }}}

