local carrier = {}

halfW = display.contentWidth / 2
halfH = display.contentHeight / 2

function startGame( event ) 
	local phase = event.phase
	if "ended" == phase then
		print("Start Button is pressed")
		local bg = require("welcome")
		bg.clearBackground()
		myButton:removeSelf()
		myButton = nil

		display.newText("Game ON!", halfW, halfH)
	end
end

carrier.startGame = startGame
return carrier

