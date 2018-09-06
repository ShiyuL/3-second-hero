-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

halfW = display.contentWidth / 2
halfH = display.contentHeight / 2

local screen_adjustment = 0.3
local background = display.newImage("\\Assets\\Statics\\Images\\open_background.jpg", halfW, halfH)
background.xScale = (screen_adjustment  * background.contentWidth)/background.contentWidth
background.yScale = background.xScale

local title_text = "3 Seconds Hero"
local title = display.newText(title_text, halfW, halfH)
