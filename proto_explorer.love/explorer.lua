explorer = {}

require 'button'
require 'draw_hex'


function explorer.enter_state()

function on_back_button_clicked()
	change_state(main_menu_explorer)
	end
	
	button.name[0] = "Back"
	button.x[0] = 0
	button.y[0] = 570
	button.w[0] = 150
	button.h[0] = 30
	button.font[0] = 18
	button.font_color1[0] = 0
	button.font_color2[0] = 0
	button.font_color3[0] = 0
	button.color1[0] = 0
	button.color2[0] = 0
	button.color3[0] = 0
	button.style[0] = "line"
	button.on_clicked[0] = on_back_button_clicked

end

function explorer.update()

	if mouse.down_event == true then

		for i in pairs (button.name) do
			if button.is_clicked(button.x[i], button.y[i],button.w[i], button.h[i]) then
					button.on_clicked[i]()

			end
			
		end
			
	end
end

function explorer.exit_state()

button.delete()

end

function explorer.draw()
	love.graphics.setColor(1,1,1)
	love.graphics.rectangle ('fill', 0,0, 800,600)

	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i],button.font_color1[i], button.font_color2[i], button.font_color3[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end

draw_hex.draw(400,400,200)



end