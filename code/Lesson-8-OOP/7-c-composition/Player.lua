require "HealthBar"
 
Player = {}
function Player:new(startX, startY, hitPoints, totalHitPoints)
	local player = display.newGroup()
	player.hitPoints = hitPoints
	player.totalHitPoints = totalHitPoints
 
	local playerImage = display.newImage("player.png")
	playerImage:setReferencePoint(display.TopLeftReferencePoint)
	player:insert(playerImage)
 
	local healthBar = HealthBar:new()
	player:insert(healthBar)
	healthBar.y = playerImage.y + playerImage.height
 
 	function player:setHitpoints(hitPoints, totalHitPoints)
		self.hitPoints = hitPoints
		self.totalHitPoints = totalHitPoints
		healthBar:setHealth(hitPoints, totalHitPoints)
	end
 
	player:setHitpoints(hitPoints, totalHitPoints)

	player.x = startX
	player.y = startY
	return player
end
return Player