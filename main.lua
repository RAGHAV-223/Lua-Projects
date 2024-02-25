--[[ Main lua/ love file ]]
_G.love = require("love")
function love.load()
    love.graphics.setBackgroundColor(0,1,0.2)
    _G.pacman ={}
    pacman.x =65
    pacman.y=65
    pacman.eat = false
    pacman.angle1 = 0.5
    pacman.angle2 = 5.5

    _G.food_x = 600
    _G.food_y = 250
end

function love.update(dt)
    
    if love.keyboard.isDown('left') then
        pacman.x = pacman.x - 1
    end

    if love.keyboard.isDown('right') then
        pacman.x = pacman.x + 1
    end
    
    if love.keyboard.isDown('up') then
        pacman.y = pacman.y - 1
    end
    
    if love.keyboard.isDown('down') then
        pacman.y = pacman.y + 1
    end

    if pacman.x >= food_x + 20 and (pacman.y == food_y + 10 or pacman.y == food_y - 10) then
        pacman.eat=true
    end
end

function love.draw()
    
    if not pacman.eat then
        love.graphics.setColor(1,1,0)
        love.graphics.circle('fill',food_x,food_y,20)    
    end

    love.graphics.setColor(1,0,0.2) -- RGB(value bewtween 0-1)
    -- love.graphics.rectangle('fill',50,50,100,50)
                        -- (type , x, y, len, hei)
    love.graphics.arc("fill",pacman.x,pacman.y,60,pacman.angle1,pacman.angle2) 
                -- (type, x, y , rad, ang1, ang2)
    
end 