local composer = require( "composer" )
local scene = composer.newScene()
print("at game.lua")
function scene:createScene(event)
	local screenGroup = self.view
	screenGroup.newText("Game ON!")
end



scene:addEventListener("createScene", scene)
return scene