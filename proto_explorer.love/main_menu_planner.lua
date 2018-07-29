main_menu_planner = {}



function main_menu_planner.enter_state()


end


function main_menu_planner.update()

	if love.keyboard.isDown('b') then
     change_state(main_menu)
	end

end



function main_menu_planner.exit_state()

end



function main_menu_planner.draw()
love.graphics.setColor(1,1,1)
love.graphics.printf("main_menu_planner",250,10,300,"center")
end
