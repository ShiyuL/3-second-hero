require("global_variables")
local composer = require( "composer" )
local scene = composer.newScene()
print("at game.lua")

function scene:create(event)
	local screenGroup = self.view
	local title_text = "Lets Start the Game!!!"
	title = display.newText(title_text, halfW, halfH)
	screenGroup:insert(title)
end

function scene:show(event)
	
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
