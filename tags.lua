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
    --awful.layout.suit.max,
    --awful.layout.suit.max.fullscreen,
    --awful.layout.suit.magnifier
}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ "1", "2-web", "3-dev", "4-music", "5-vm" }, s, layouts[1])
end
-- }}}

