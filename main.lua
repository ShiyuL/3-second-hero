-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local screen_adjustment = 0.3
local background = display.newImage("\\Assets\\Statics\\Images\\open_background.jpg")
background.xScale = (screen_adjustment  * background.contentWidth)/background.contentWidth
background.yScale = background.xScale
background.x = display.contentWidth / 2
background.y = display.contentHeight / 2