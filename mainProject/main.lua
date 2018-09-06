-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local bg = require("welcome")
bg.setBackground()
local game = require("game")
local widget = require("widget")
myButton = widget.newButton
{
	left = 90,
	top = 400,
	width = 150,
	height = 50,
	defaultFile = "\\Assets\\Statics\\Images\\button_background.png",
	overFile = "\\Assets\\Statics\\Images\\button_background_pressed.png",
	label = "Start Game",
	onEvent = game.startGame,
}
