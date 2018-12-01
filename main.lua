local GAME_WIDTH = 600
local GAME_HEIGHT = 600

local playerPos = {
  x = 100,
  y = 100
}

function love.load()
  -- here, you might load resources like images or sounds
end

function love.update(dt)
  -- holding arrow keys determines player's velocity
  if love.keyboard.isDown("right") then 
    playerPos.x = playerPos.x + 256 * dt
  end
  if love.keyboard.isDown("left") then
    playerPos.x = playerPos.x - 256 * dt
  end
  if love.keyboard.isDown("up") then 
    playerPos.y = playerPos.y - 256 * dt
  end
  if love.keyboard.isDown("down") then
    playerPos.y = playerPos.y + 256 * dt
  end
end

function love.draw()
  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.circle("fill", playerPos.x, playerPos.y, 20, 32)
end