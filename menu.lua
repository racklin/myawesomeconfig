-- {{{ Menu
-- Create a laucher widget and a main menu
mynetworkmenu = {
	{ "Google-Chrome", "google-chrome" },
	{ "firefox", "firefox" },
	{ "filezilla", "filezilla" },
	{ "pidgin" , "pidgin" },
	{ "skype", "skype" },
	{ "vinagre", "vinagre" }
}

myeditorsmenu = {
	{ "vim", terminal .. " -e vim" },
	{ "ghex", "ghex2" },
        { "Netbeans 7.0", "netbeans", "/opt/netbeans-7.0/nb/netbeans.png"}
}

myutilitiesmenu = {
	{ "gimp", "gimp" },
	{ "audacity", "audacity" },
	{ "Brasero", "brasero" },
	{ "truecrypt", "truecrypt" },
	{ "open terminal", terminal },
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
                                    { "quit", awesome.quit },
					{ "lock", cmd_lock },
					{ "shutdown", cmd_shutdown },
					{ "suspend", cmd_suspend }
                                  }
                        })


mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })
-- }}}

