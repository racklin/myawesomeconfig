-- shifty: tags matching and client rules
shifty.config.apps = {
	-- web
	{ match = { "Firefox", "Google%-chrome"                   }, tag = "2-web",  },	

	-- dev
	{ match = { "NetBeans IDE 7.0"                  }, tag = "3-dev",  },	

	-- vm
	{ match = { "Vmplayer", "Vmware"                  }, tag = "4-vmware",  },	
	
	--video
	{ match = { "Deadbeef"         }, tag = "5-media", },
	{ match = { "MPlayer", "Vlc", "Audacity"         }, tag = "5-media", },
	{ match = { "MPlayer"                            }, geometry = {0,15,nil,nil}, float = true },
	
	-- gimp
	{ match = { "Gimp"                               }, tag = "gimp", },
	{ match = { "gimp%-image%-window"                }, geometry = {175,15,930,770}, border_width = 0                },
	{ match = { "^gimp%-toolbox$"                    }, geometry = {0,15,175,770}, slave = true, border_width = 0    },
	{ match = { "^gimp%-dock$"                       }, geometry = {1105,15,175,770}, slave = true, border_width = 0 },

	-- vivipos
	{ match = { "VIVIPOS"                               }, tag = "vivipos", float=true },
	
	-- client manipulation
	{ match = { "" },
		honorsizehints = false,
		buttons = awful.util.table.join (
		awful.button({        }, 1, function (c) client.focus = c; c:raise() end),
		awful.button({ modkey }, 1, awful.mouse.client.move),
		awful.button({ modkey }, 3, awful.mouse.client.resize))
	},
}

