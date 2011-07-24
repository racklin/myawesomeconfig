-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    --awful.layout.suit.tile.left,
    --awful.layout.suit.tile.bottom,
    awful.layout.suit.tile,
    awful.layout.suit.tile.top,    
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.floating,
   -- awful.layout.suit.fair,
   -- awful.layout.suit.spiral,
    --awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    --awful.layout.suit.max.fullscreen,
    --awful.layout.suit.magnifier
}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
--tags = {}
--for s = 1, screen.count() do
    -- Each screen has its own tag table.
--    tags[s] = awful.tag({ "1", "2-web", "3-com", "4-ide", "5-fun", "6-vm" }, s, layouts[1])
--end
-- }}}


-- shifty: predefined tags
shifty.config.tags = {
	["1"] = { init = true, position = 1, layout = awful.layout.suit.tile },
	["2-web"] = { position = 2, layout = awful.layout.suit.max, spawn = "firefox" },
	["3-com"] = { position = 3, layout = awful.layout.suit.max, spawn = terminal },
	["4-ide"] = { position = 4, layout = awful.layout.suit.tile.bottom },
	["5-fun"] = { position = 5, layout = awful.layout.suit.tile.bottom },
	["6-vm"] = { position = 6, layout = awful.layout.suit.floating, spawn = "gimp" },
	["7-video"] = { position = 7, layout = awful.layout.suit.floating },
	["8-graphic"] = { position = 8, layout = awful.layout.suit.floating },
}


-- shifty: tags matching and client rules
shifty.config.apps = {
	-- web
	{ match = { "Firefox", "luakit"                  }, tag = "2-web",  },
	-- communications
	{ match = { "Pidgin", "Skype"                    }, tag = "3-com",  },
	
	-- gimp
	{ match = { "Gimp"                               }, tag = "8-graphic", },
	{ match = { "gimp%-image%-window"                }, geometry = {175,15,930,770}, border_width = 0                },
	{ match = { "^gimp%-toolbox$"                    }, geometry = {0,15,175,770}, slave = true, border_width = 0    },
	{ match = { "^gimp%-dock$"                       }, geometry = {1105,15,175,770}, slave = true, border_width = 0 },

	--video
	{ match = { "MPlayer", "Vlc", "Audacity"         }, tag = "7-video",                                             },
	{ match = { "MPlayer"                            }, geometry = {0,15,nil,nil}, float = true },
	-- client manipulation
	{ match = { "" },
		honorsizehints = false,
		buttons = awful.util.table.join (
		awful.button({        }, 1, function (c) client.focus = c; c:raise() end),
		awful.button({ modkey }, 1, awful.mouse.client.move),
		awful.button({ modkey }, 3, awful.mouse.client.resize))
	},
}

-- shifty: defaults
shifty.config.defaults = {
	layout = awful.layout.suit.tile,
}
shifty.config.layouts = layouts
shifty.init()

