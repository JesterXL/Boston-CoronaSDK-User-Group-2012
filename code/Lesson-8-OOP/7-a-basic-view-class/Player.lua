Player = {}

function Player:new(startX, startY)

	local player = display.newImage("player.png")
	player:setReferencePoint(display.TopLeftReferencePoint)
	player.x = startX
	player.y = startY
	return player
	
end

return Player