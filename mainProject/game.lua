require("global_variables")

local physics = require "physics"
physics.start()

local composer = require( "composer" )
local scene = composer.newScene()
print("at game.lua")
print(display.contentWidth)
print(display.contentHeight)
function scene:create(event)
	local screenGroup = self.view

	hero = display.newImage("\\Assets\\Statics\\Images\\hero.png")
	hero.xScale = 0.1
	hero.yScale = 0.1
	hero.x = 160
	hero.y = 460
	screenGroup:insert(hero)

	enemy1 = display.newImage("\\Assets\\Statics\\Images\\enemy.png")
	enemy1.xScale = 0.1
	enemy1.yScale = 0.1
    enemy1.x = 100
    enemy1.y = -50
    enemy1.speed = math.random(2,6)
    enemy1.initX = enemy1.x
    enemy1.amp = math.random(20,100)
    enemy1.angle = math.random(1,360)
    physics.addBody(enemy1, "static", {density=.1, bounce=0.1, friction=.2, radius=12})
	screenGroup:insert(enemy1)

end

function touchScreen(event)
    print("touch")
   if event.phase == "began" then

   end
   
   if event.phase == "ended" then

   end

end


function moveEnemies(self,event)
	if self.y > 500 then
		 self.y = -50
		 -- pad left and right for about 20 pixels
         self.x = math.random(20,300)
         self.speed = math.random(2,6)
         self.amp = math.random(20,100)
         self.angle = math.random(1,360)
	else 
		self.y = self.y + self.speed
		self.angle = self.angle + .1
	end
end


function scene:show(event)
	Runtime:addEventListener("touch", touchScreen)
	
	enemy1.enterFrame = moveEnemies
    Runtime:addEventListener("enterFrame", enemy1)
end

function scene:hide(event)
	
end

function scene:destroy(event)
	Runtime:removeEventListener("enterFrame", enemy1)
	Runtime:removeEventListener("touch", touchScreen)
end


scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
