--~/.config/awesome/rc.luacall(require, "luarocks.loader")
--[[
 _____ __ _ __ _____ _____ _____ _______ _____
|     |  | |  |  ___|  ___|     |       |  ___|
|  -  |  | |  |  ___|___  |  |  |  | |  |  ___|
|__|__|_______|_____|_____|_____|__|_|__|_____|
               ~ AestheticArch ~
                     rxyhn
--]]


-- Standard awesome library
local gfs = require("gears.filesystem")
local awful = require("awful")
require("awful.autofocus")

-- Theme handling library
local beautiful = require("beautiful")
theme_dir = gfs.get_configuration_dir() .. "theme/"
dpi = beautiful.xresources.apply_dpi
beautiful.init(gfs.get_configuration_dir() .. "theme/theme.lua")

-- Default Applications
terminal = "kitty"
editor = terminal .. " -e " .. os.getenv("EDITOR")
launcher = "rofi -show drun -theme " .. theme_dir .. "rofi.rasi"
file_manager = "nautilus"
music_client = "spotify"
browser = "firefox"

-- Weather API
openweathermap_key = "" -- API Key
openweathermap_city_id = "" -- City ID
weather_units = "metric" -- Unit

-- Global Vars
screen_width = awful.screen.focused().geometry.width
screen_height = awful.screen.focused().geometry.height

-- Autostart
local autostart = require("configuration.autostart")

-- Import Configuration
require("configuration")

-- Import Daemons and Widgets
require("signal")
require("ui")

-- Garbage Collector Settings
collectgarbage("setpause", 110)
collectgarbage("setstepmul", 1000)

-- Wallpaper
local wallpaper_cmd="feh --bg-fill /home/andres/Downloads/peaceful-wallpaper-3440x1440.jpg"
os.execute(wallpaper_cmd)
