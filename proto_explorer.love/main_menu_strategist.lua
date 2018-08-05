main_menu_strategist = {}

require 'button'
require 'mouse'

function main_menu_strategist.enter_state()

	function on_back_button_clicked()
	change_state(main_menu)
	end
	
	button.name[1] = "Back"
	button.x[1] = 325
	button.y[1] = 155
	button.w[1] = 150
	button.h[1] = 30
	button.font[1] = 18
	button.font_color1[1] = 0
	button.font_color2[1] = 0
	button.font_color3[1] = 0
	button.color1[1] = 1
	button.color2[1] = 1
	button.color3[1] = 1
	button.style[1] = 'fill'
	button.on_clicked[1] = on_back_button_clicked

end


function main_menu_strategist.update()

	if mouse.down_event == true then

		for i in pairs (button.name) do
			if button.is_clicked(button.x[i], button.y[i],button.w[i], button.h[i]) then
					button.on_clicked[i]()

			end
			
		end
			
	end

end



function main_menu_strategist.exit_state()

button.delete()
end



function main_menu_strategist.draw()

love.graphics.setColor(159/255, 129/255, 112/255)
love.graphics.rectangle("fill", 0, 0, 800, 50)

love.graphics.setColor(1,1,1)
love.graphics.printf("main_menu_strategist",250,10,300,"center")

love.graphics.setColor(0.8, 0.8, 0.8)
love.graphics.rectangle("fill", 250, 50, 300, 450)

	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i], button.font_color1[i], button.font_color2[i], button.font_color3[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end
end
