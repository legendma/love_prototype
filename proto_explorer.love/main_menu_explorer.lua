main_menu_explorer = {}

require 'button'

function main_menu_explorer.enter_state()


end


function main_menu_explorer.update()

	if love.keyboard.isDown('b') then
     change_state(main_menu)
	end

end



function main_menu_explorer.exit_state()

end



function main_menu_explorer.draw()


love.graphics.setColor(1,1,1)
love.graphics.printf("main_menu_explorer",250,10,300,"center")

love.graphics.setColor(0.8, 0.8, 0.8)
	love.graphics.rectangle("fill", 250, 50, 300, 450)


	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end

end
