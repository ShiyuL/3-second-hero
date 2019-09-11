require("global_variables")


local carrier = {}
function setBackground()
	local screen_adjustment = 0.3
	background = display.newImage("\\Assets\\Statics\\Images\\open_background.jpg", halfW, halfH)
	background.xScale = (screen_adjustment  * background.contentWidth)/background.contentWidth
	background.yScale = background.xScale

	local title_text = "3 Seconds Hero"
	title = display.newText(title_text, halfW, halfH)
end

function clearBackground()
	background:removeSelf()
	background = nil

	title:removeSelf()
	title = nil
end

carrier.setBackground = setBackground
carrier.clearBackground = clearBackground
return carrier