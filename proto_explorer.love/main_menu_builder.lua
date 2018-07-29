main_menu_builder = {}



function main_menu_builder.enter_state()


end


function main_menu_builder.update()

	if love.keyboard.isDown('b') then
     change_state(main_menu)
	end

end



function main_menu_builder.exit_state()

end



function main_menu_builder.draw()

love.graphics.setColor(1,1,1)
love.graphics.printf("main_menu_builder",250,10,300,"center")
end
