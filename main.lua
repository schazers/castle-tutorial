local GAME_WIDTH = 600
local GAME_HEIGHT = 600

local PLAYER_SPEED = 256

local playerVelocity = {
  x = 0,
  y = 0
}

local playerPos = {
  x = 100,
  y = 100
}

function love.load()
  -- here, you might load resources like images or sounds
end

function love.update(dt)
  -- holding arrow keys determines player's velocity
  playerVelocity.x, playerVelocity.y = 0, 0
  if love.keyboard.isDown("right") then 
    playerVelocity.x = playerVelocity.x + PLAYER_SPEED * dt
  end
  if love.keyboard.isDown("left") then
    playerVelocity.x = playerVelocity.x - PLAYER_SPEED * dt
  end
  if love.keyboard.isDown("up") then 
    playerVelocity.y = playerVelocity.y - PLAYER_SPEED * dt
  end
  if love.keyboard.isDown("down") then
    playerVelocity.y = playerVelocity.y + PLAYER_SPEED * dt
  end

  -- move the player
  playerPos.x = playerPos.x + playerVelocity.x
  playerPos.y = playerPos.y + playerVelocity.y
end

function love.draw()
  love.graphics.setColor(0.4, 0.4, 1.0, 1.0)
  love.graphics.circle("fill", playerPos.x, playerPos.y, 20, 32)
end