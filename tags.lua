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
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({}, s, layouts[1])
end
-- }}}


-- shifty: predefined tags
shifty.config.tags = {
	["1"] = { init = true, position = 1, layout = awful.layout.suit.tile },
	["2-web"] = { position = 2, layout = awful.layout.suit.max, spawn = "firefox" },
	["3-dev"] = { position = 3, layout = awful.layout.suit.tile.bottom },
	["4-vmware"] = { position = 4, layout = awful.layout.suit.floating, spawn = "vmplayer" },
	["5-media"] = { position = 5, layout = awful.layout.suit.floating },
	["gimp"] = { layout = awful.layout.suit.floating }
}


-- shifty: tags matching and client rules
shifty.config.apps = {
	-- web
	{ match = { "Firefox", "luakit"                  }, tag = "2-web",  },	

	-- vm
	{ match = { "Vmplayer", "Vmware"                  }, tag = "4-vmware",  },	
	
	--video
	{ match = { "MPlayer", "Vlc", "Audacity"         }, tag = "5-media", },
	{ match = { "MPlayer"                            }, geometry = {0,15,nil,nil}, float = true },
	
	-- gimp
	{ match = { "Gimp"                               }, tag = "gimp", },
	{ match = { "gimp%-image%-window"                }, geometry = {175,15,930,770}, border_width = 0                },
	{ match = { "^gimp%-toolbox$"                    }, geometry = {0,15,175,770}, slave = true, border_width = 0    },
	{ match = { "^gimp%-dock$"                       }, geometry = {1105,15,175,770}, slave = true, border_width = 0 },
	
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
    mwfact = 0.60,
    floatBars=true,
    guess_name=true,
    guess_position=true,
}
shifty.config.layouts = layouts

