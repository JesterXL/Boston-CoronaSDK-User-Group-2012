require "Player"

local player1 = Player:new(40, 60, 8, 10)
local player2 = Player:new(player1.x + player1.width + 2, 40, 10, 10)
local player3 = Player:new(player2.x + player2.width + 2, 60, 10, 10)
player3.rotation = 23
player3:setHitpoints(2, 10)