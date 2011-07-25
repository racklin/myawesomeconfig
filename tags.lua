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
	["3-dev"] = { position = 3, layout = awful.layout.suit.tile },
	["4-vmware"] = { position = 4, layout = awful.layout.suit.floating, spawn = "vmplayer" },
	["5-media"] = { position = 5, layout = awful.layout.suit.floating, spawn = "deadbeef" },
	["6"] = { position = 6, layout = awful.layout.suit.tile },
	["7"] = { position = 7, layout = awful.layout.suit.tile },
	["8"] = { position = 8, layout = awful.layout.suit.tile },
	["9"] = { position = 9, layout = awful.layout.suit.tile },
	["gimp"] = { layout = awful.layout.suit.floating },
	["vivipos"] = { layout = awful.layout.suit.floating }
}


-- shifty: defaults
shifty.config.defaults = {
    layout = awful.layout.suit.tile,
    mwfact = 0.60,
    floatBars=true,
    guess_name=true,
    guess_position=true,
    run = function(tag) naughty.notify({ text = tag.name }) end,
}
shifty.config.layouts = layouts

