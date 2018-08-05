--define button object
button = {}
button.name = {}	-- name of button and text to be printed in button
button.x = {}		-- button x posiiton in pixels
button.y = {}		-- button y position in pixels
button.w = {}		-- button width in pixels
button.h = {}		-- button height in pixels
button.font = {}    -- font == font size
button.font_color1 = {}		--font color
button.font_color2 = {}
button.font_color3 = {}
button.color1 =  {}	-- color of button rgb ranging from 0 to 1
button.color2 =  {}
button.color3 =  {}
button.style = {}	-- fill or line , exact characters
button.on_clicked = {}  --state change when button is clicked	



function button.draw( name, x, y, w, h, font, font_color1, font_color2, font_color3, color1, color2, color3, style )
	love.graphics.setNewFont(font)
	love.graphics.setColor(color1, color2, color3)
	love.graphics.rectangle( style, x, y, w, h )
	local cursor_y = y + h / 2 - font/2
	love.graphics.setColor(font_color1, font_color2, font_color3)	
	love.graphics.printf( name, x, cursor_y, w, "center" )
end		

function button.is_clicked (button_x, button_y, button_w, button_h)

	
	if mouse.x < button_x then return false
		elseif mouse.x > button_x + button_w then return false
		elseif mouse.y < button_y then return false
		elseif mouse.y > button_y + button_h then return false
		else return true
	end
	
end

function button.delete()
	for i in pairs (button.name) do	
		button.name[i] = nil
		button.x[i] = nil
		button.y[i] = nil
		button.w[i] = nil
		button.h[i] = nil
		button.font[i] = nil
		button.font_color1[i] = nil
		button.font_color2[i] = nil
		button.font_color3[i] = nil
		button.color1[i] = nil
		button.color2[i] = nil
		button.color3[i] = nil
		button.style[i] = nil
		button.on_clicked[i] = nil
	end
end



-- define indivual buttons and thir properties




-- the explorer button

--function on_explorer_button_clicked()
--	change_state( main_menu_explorer)
--end

--button.name[0] = "Explorer"
--button.x[0] = 325
--button.y[0] = 75
--button.w[0] = 150
--button.h[0] = 30
--button.font[0] = 18
--button.font_color1[0] = 1
--button.font_color2[0] = 1
--button.font_color3[0] = 1
--button.color1[0] = 0
--button.color2[0] = 0
--button.color3[0] = 0
--button.style[0] = "line"
--button.on_clicked[0] = on_explorer_button_clicked