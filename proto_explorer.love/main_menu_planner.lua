main_menu_planner = {}

require 'button'
require 'mouse'

function main_menu_planner.enter_state()

	function on_back_button_clicked()
	change_state(main_menu)
	end
	
	button.name[1] = "Back"
	button.x[1] = 0.4* game_window_width
	button.y[1] = 0.258 * game_window_height
	button.w[1] = 0.1875*game_window_width
	button.h[1] = 0.05 * game_window_height
	button.font[1] = 0.03*game_window_height
	button.font_color1[1] = 0
	button.font_color2[1] = 0
	button.font_color3[1] = 0
	button.color1[1] = 1
	button.color2[1] = 1
	button.color3[1] = 1
	button.style[1] = 'fill'
	button.on_clicked[1] = on_back_button_clicked

end


function main_menu_planner.update()

	if mouse.down_event == true then

		for i in pairs (button.name) do
			if button.is_clicked(button.x[i], button.y[i],button.w[i], button.h[i]) then
					button.on_clicked[i]()

			end
			
		end
			
	end
end



function main_menu_planner.exit_state()

button.delete()
end



function main_menu_planner.draw()



	-- main menu hedder
	love.graphics.setColor(159/255, 129/255, 112/255)
	love.graphics.rectangle("fill", 0, 0, game_window_width, 0.0833*game_window_height)
	love.graphics.setColor(0, 0, 0)
	love.graphics.printf("main_menu_planner",0.3125*game_window_width,0.0166*game_window_height,0.375*game_window_width,"center")

	--main menu text
	love.graphics.setColor(0.8, 0.8, 0.8)
	love.graphics.rectangle("fill", 0.3125*game_window_width, 0.0833*game_window_height, 0.375*game_window_width, 0.75*game_window_height)
	


	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i], button.font_color1[i], button.font_color2[i], button.font_color3[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end
end
