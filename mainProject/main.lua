-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.HiddenStatusBar)

print("at main.lua")
local composer = require( "composer" )
composer.gotoScene( "start" )
