HealthBar = {}
 
function HealthBar:new()
	local group = display.newGroup()
 
	local redBar = display.newRect(0, 0, 35, 6)
	group:insert(redBar)
	redBar:setFillColor(255, 0, 0)
 
	local greenBar = display.newRect(0, 0, 35, 6)
	greenBar:setReferencePoint(display.TopLeftReferencePoint)
	group:insert(greenBar)
	greenBar:setFillColor(0, 255, 0)
 
	function group:setHealth(current, max)
		local percent = current / max
		local desiredWidth = 35 * percent
		greenBar.xScale = percent
		greenBar.x = redBar.x + greenBar.xReference
	end
 
	return group
end
 
return HealthBar