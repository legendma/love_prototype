main_menu_explorer = {}



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

end
