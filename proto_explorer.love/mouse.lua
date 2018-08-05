mouse = {}
mouse.x = 0
mouse.y = 0
mouse.previous_down = false
mouse.down_event = false

function mouse.update()
	mouse.down_event = false

	if mouse.previous_down == false and love.mouse.isDown(1) == true then
		mouse.down_event= true
		mouse.x, mouse.y = love.mouse.getPosition()
	end

	mouse.previous_down = love.mouse.isDown(1)
end



