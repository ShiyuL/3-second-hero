
require("global_variables")
local composer = require( "composer" )
local scene = composer.newScene()

print("at start.lua")

-- background 
function scene:create(event)

	local screenGroup = self.view

	local screen_adjustment = 0.3
	background = display.newImage("\\Assets\\Statics\\Images\\open_background.jpg", halfW, halfH)
	background.xScale = (screen_adjustment  * background.contentWidth)/background.contentWidth
	background.yScale = background.xScale

	screenGroup:insert(background)

end

function start(event)
	if event.phase == "began" then
		composer.gotoScene("game", "fade", 400)
	end
end

function scene:show(event)
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
		onEvent = start,
	}


end

function scene:hide(event)
	
end

function scene:destroy(event)

end


scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
