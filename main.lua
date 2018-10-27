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
  -- Here, you might load resources like images or sounds
end

function love.update(dt)
  local goUp = boolToNum(love.keyboard.isDown("up"))
  local goDown = boolToNum(love.keyboard.isDown("down"))
  local goLeft = boolToNum(love.keyboard.isDown("left"))
  local goRight = boolToNum(love.keyboard.isDown("right"))

  playerVelocity.x = (goRight * PLAYER_SPEED * dt) - (goLeft * PLAYER_SPEED * dt)
  playerVelocity.y = -1 * (goUp * PLAYER_SPEED * dt) + (goDown * PLAYER_SPEED * dt)

  playerPos.x = playerPos.x + playerVelocity.x
  playerPos.y = playerPos.y + playerVelocity.y
end

function love.draw()
  love.graphics.setColor(0.4, 0.4, 1.0, 1.0)
  love.graphics.circle("fill", playerPos.x, playerPos.y, 20, 32)
end

function boolToNum(val)
  return val == true and 1 or val == false and 0
end