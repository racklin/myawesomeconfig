-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
require("shifty")
require("vicious")

-- Load Debian menu entries
require("debian.menu")

require("global")

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
--beautiful.init("/usr/share/awesome/themes/default/theme.lua")
beautiful.init(config_dir.."/themes/zenburn/theme.lua")

require("tags")
require("menu")
require("top-bar")
require("bindings")
--require("rules")

require("presets")
require("autostart")
