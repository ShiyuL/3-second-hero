local composer = require( "composer" )
local scene = composer.newScene()

print("at start.lua")

-- background 
function scene:createScene(event)

	local screen = self.view

	background = display.newImage("\\Assets\\Statics\\Images\\open_background.jpg")
	screenGroup:insert(background)

end

function start(event)
	if event.phase == "began" then
		storyboard.gotoScene("game", "fade", 400)
	end
end

function scene:enterScene(event)
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

function scene:exitScene(event)
	background:removeEventListener("touch", start)
end

function scene:destroyScene(event)

end


scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene
