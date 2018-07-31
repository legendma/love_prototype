
main_menu = {}

require 'button'



function main_menu.enter_state()

-- define indivual buttons and thir properties

-- the explorer button

	function on_explorer_button_clicked()
		change_state( main_menu_explorer)
	end
	
	button.name[0] = "Explorer"
	button.x[0] = 325
	button.y[0] = 75
	button.w[0] = 150
	button.h[0] = 30
	button.font[0] = 18
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
	button.x[1] = 325
	button.y[1] = 155
	button.w[1] = 150
	button.h[1] = 30
	button.font[1] = 18
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
	button.x[2] = 325
	button.y[2] = 235
	button.w[2] = 150
	button.h[2] = 30
	button.font[2] = 18
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
	button.x[3] = 325
	button.y[3] = 315
	button.w[3] = 150
	button.h[3] = 30
	button.font[3] = 18
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
	button.x[4] = 325
	button.y[4] = 395
	button.w[4] = 150
	button.h[4] = 30
	button.font[4] = 18
	button.color1[4] = 0
	button.color2[4] = 0
	button.color3[4] = 0
	button.style[4] = "line"
	button.on_clicked[4] = on_exit_button_clicked

end



function main_menu.update()


	if love.mouse.isDown(1) then
	
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


	love.graphics.setNewFont(25)

	-- main menu hedder
	love.graphics.setColor(159/255, 129/255, 112/255)
	love.graphics.rectangle("fill", 0, 0, 800, 50)
	love.graphics.setColor(0, 0, 0)
	love.graphics.printf("Sojourn" .. " v" .. game.version,250,10,300,"center")

	--main menu text
	love.graphics.setColor(0.8, 0.8, 0.8)
	love.graphics.rectangle("fill", 250, 50, 300, 450)
	
	
	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end
	
end
