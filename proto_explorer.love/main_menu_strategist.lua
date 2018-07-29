main_menu_strategist = {}



function main_menu_strategist.enter_state()


end


function main_menu_strategist.update()

	if love.keyboard.isDown('b') then
     change_state(main_menu)
	end

end



function main_menu_strategist.exit_state()

end



function main_menu_strategist.draw()

love.graphics.setColor(1,1,1)
love.graphics.printf("main_menu_strategist",250,10,300,"center")
end
