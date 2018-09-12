require("global_variables")

local physics = require "physics"
physics.start()

local composer = require( "composer" )
local scene = composer.newScene()
print("at game.lua")

function scene:create(event)
	local screenGroup = self.view

	mine1 = display.newImage("\\Assets\\Statics\\Images\\mine.png")
	mine1.xScale = 0.1
	mine1.yScale = 0.1
    mine1.x = 500
    mine1.y = 100
    mine1.speed = math.random(2,6)
    mine1.initY = mine1.y
    mine1.amp = math.random(20,100)
    mine1.angle = math.random(1,360)
    physics.addBody(mine1, "static", {density=.1, bounce=0.1, friction=.2, radius=12})
	screenGroup:insert(mine1)

end

function moveMines(self,event)
	if self.x < -50 then
		 self.x = 500
         self.y = math.random(90,220)
         self.speed = math.random(2,6)
         self.amp = math.random(20,100)
         self.angle = math.random(1,360)
	else 
		self.x = self.x - self.speed
		self.angle = self.angle + .1
		self.y = self.amp*math.sin(self.angle)+self.initY
	end
end


function scene:show(event)
	mine1.enterFrame = moveMines
    Runtime:addEventListener("enterFrame", mine1)
end

function scene:hide(event)
	
end

function scene:destroy(event)
	Runtime:removeEventListener("enterFrame", mine1)
end


scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
