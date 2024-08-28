function love.load()
    redR = 1
    redG = 0
    redB = 0
    greenR = 0
    greenG = 1
    greenB = 0
    blueR = 0
    blueG = 0
    blueB = 1

    colorChange = false
end

function love.update(dt)

end

function love.draw()
    local x = love.mouse.getX()
    local y = love.mouse.getY()
    
    	love.graphics.setColor(redR, redG, redB)
	love.graphics.circle("fill", x,y, 20)

	love.graphics.setColor(greenR, greenG, greenB)
	love.graphics.circle("fill", x - 20,y - 40, 20)

	--local myColor = {0, 1, 0, 1}
	love.graphics.setColor(blueR, blueG, blueB)
	love.graphics.circle("fill", x - 60,y - 80, 20)

    	love.graphics.setColor(redR, redG, redB)
	love.graphics.circle("fill", x - 100,y - 120, 20)

	love.graphics.setColor(greenR, greenG, greenB)
	love.graphics.circle("fill", x - 140,y - 160, 20)

	--local myColor = {0, 1, 0, 1}
	love.graphics.setColor(blueR, blueG, blueB)
	love.graphics.circle("fill", x - 180,y - 200, 20)

    if love.mouse.isDown(1) then
        if colorChange == false then
            colorChange = true
            redR = redR + 10
            redG = redG + 5
            redB = redB + 15
        else
            colorChange = false
            redR = 1
            redG = 0
            redB = 0
        end
    end
end


