push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243
--Start Method
function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    }
) 
end

--Keyboard Input Exit application
function love.keypressed(Key)
    if Key == 'escape' then
        love.event.quit()
    end
end

--Draw graphics
function love.draw()
    push:apply('start')
    love.graphics.printf('Hello Pong', 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')
    push:apply('end')
end