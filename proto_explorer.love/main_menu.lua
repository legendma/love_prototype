
main_menu = {}

require 'button'
require 'mouse'





function main_menu.enter_state()

-- define indivual buttons and thir properties

-- the explorer button

	function on_explorer_button_clicked()
		change_state( main_menu_explorer)
	end
	
	button.name[0] = "Explorer"
	button.x[0] = 0.4*game_window_width
	button.y[0] = 0.125*game_window_height
	button.w[0] = 0.1875*game_window_width
	button.h[0] = 0.05 * game_window_height
	button.font[0] = 0.03*game_window_height
	button.font_color1[0] = 0
	button.font_color2[0] = 0
	button.font_color3[0] = 0
	button.color1[0] = 0
	button.color2[0] = 0
	button.color3[0] = 0
	button.style[0] = "line"
	button.on_clicked[0] = on_explorer_button_clicked
	
	
	
	
	-- the Builder button
	
	function on_builder_button_clicked()
		change_state(main_menu_builder)
	end
	
	button.name[1] = "Builder"
	button.x[1] = 0.4*game_window_width
	button.y[1] = 0.258*game_window_height
	button.w[1] = 0.1875*game_window_width
	button.h[1] = 0.05 * game_window_height
	button.font[1] =0.03*game_window_height
	button.font_color1[1] = 0
	button.font_color2[1] = 0
	button.font_color3[1] = 0
	button.color1[1] = 0
	button.color2[1] = 0
	button.color3[1] = 0
	button.style[1] = "line"
	button.on_clicked[1] = on_builder_button_clicked
	
	
	-- the Strategist button
	
	function on_strategist_button_clicked()
		change_state(main_menu_strategist)
	end
	
	button.name[2] = "Strategist"
	button.x[2] = 0.4*game_window_width
	button.y[2] = 0.391*game_window_height
	button.w[2] = 0.1875*game_window_width
	button.h[2] = 0.05 * game_window_height
	button.font[2] = 0.03*game_window_height
	button.font_color1[2] = 0
	button.font_color2[2] = 0
	button.font_color3[2] = 0
	button.color1[2] = 0
	button.color2[2] = 0
	button.color3[2] = 0
	button.style[2] = "line"
	button.on_clicked[2] = on_strategist_button_clicked
	
	-- the Planner button
	
	function on_planner_button_clicked()
		change_state(main_menu_planner)
	end
	button.name[3] = "Planner"
	button.x[3] = 0.4*game_window_width
	button.y[3] = 0.525 * game_window_height
	button.w[3] = 0.1875*game_window_width
	button.h[3] = 0.05 * game_window_height
	button.font[3] = 0.03*game_window_height
	button.font_color1[3] = 0
	button.font_color2[3] = 0
	button.font_color3[3] = 0
	button.color1[3] = 0
	button.color2[3] = 0
	button.color3[3] = 0
	button.style[3] = "line"
	button.on_clicked[3] = on_planner_button_clicked
	
	-- the Exit game button
	function on_exit_button_clicked()
		love.event.quit()
	end
	button.name[4] = "Exit"
	button.x[4] = 0.4*game_window_width
	button.y[4] = 0.658 * game_window_height
	button.w[4] = 0.1875*game_window_width
	button.h[4] = 0.05 * game_window_height
	button.font[4] = 0.03*game_window_height
	button.font_color1[4] = 0
	button.font_color2[4] = 0
	button.font_color3[4] = 0
	button.color1[4] = 0
	button.color2[4] = 0
	button.color3[4] = 0
	button.style[4] = "line"
	button.on_clicked[4] = on_exit_button_clicked






end



function main_menu.update()

	

	if mouse.down_event == true then

		for i in pairs (button.name) do
			if button.is_clicked(button.x[i], button.y[i],button.w[i], button.h[i]) then
					button.on_clicked[i]()

			end
			
		end
			
	end
	
	
end




function main_menu.exit_state()

	button.delete()

end



function main_menu.draw()


	love.graphics.setNewFont(0.0366*game_window_height)

	-- main menu hedder
	love.graphics.setColor(159/255, 129/255, 112/255)
	love.graphics.rectangle("fill", 0, 0, game_window_width, 0.0833*game_window_height)
	love.graphics.setColor(0, 0, 0)
	love.graphics.printf("Sojourn" .. " v" .. game.version,0.3125*game_window_width,0.0166*game_window_height,0.375*game_window_width,"center")

	--main menu text
	love.graphics.setColor(0.8, 0.8, 0.8)
	love.graphics.rectangle("fill", 0.3125*game_window_width, 0.0833*game_window_height, 0.375*game_window_width, 0.75*game_window_height)
	
	
	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i], button.font_color1[i], button.font_color2[i], button.font_color3[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end
	
end
