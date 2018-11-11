explorer = {}

require 'button'
require 'draw_hex'
require 'hex_grid'
require 'generate_hex_grid_coords'


function explorer.enter_state()

	function on_back_button_clicked()
	change_state(main_menu_explorer)
	end
	
	button.name[0] = "Back"
	button.x[0] = 0
	button.y[0] = 0.95*game_window_height
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
	love.graphics.rectangle ('fill', 0,0, game_window_width,game_window_height)

	for i in pairs (button.name) do
		button.draw(button.name[i],button.x[i], button.y[i],button.w[i], button.h[i], button.font[i],button.font_color1[i], button.font_color2[i], button.font_color3[i], button.color1[i], button.color2[i], button.color3[i], button.style[i])
	end

hex_grid_origin_x = 400
hex_grid_origin_y = 400
hex_pixel_size = 50
hex_grid_size = 7   --must be an odd number
	

hex_grid_x = {}
hex_grid_y = {}
hex_grid_z = {}
hex_pixel_x = {}
hex_pixel_y = {}

hex_grid_x, hex_grid_y, hex_grid_z = generate_hex_grid_coords.generate(hex_grid_size, hex_grid_size)

for i in pairs (hex_grid_x) do
hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x[i], hex_grid_y[i], hex_grid_z[i], hex_pixel_size)
draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_pixel_size)
end

--love.graphics.setNewFont(12)
--
--local x = 400
--local y = 0
--
--love.graphics.printf(hex_grid_x[0],x,y,500,"left")
--x=x+20
--love.graphics.printf(hex_grid_y[0],x,y,500,"left")
--x=x+20
--love.graphics.printf(hex_grid_z[0],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[1],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[1],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[1],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[2],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[2],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[2],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[3],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[3],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[3],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[4],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[4],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[4],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[5],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[5],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[5],x,y,500,"left")
--y=y+50
--
--love.graphics.printf(hex_grid_x[6],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_y[6],x,y,500,"left")
--x=x+20                          
--love.graphics.printf(hex_grid_z[6],x,y,500,"left")
--y=y+50



--for i=0,2 do
--hex_pixel_x[i], hex_pixel_y[i] = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x[i], hex_grid_y[i], hex_grid_z[i], hex_grid_size)
--draw_hex.draw(hex_pixel_x[i],hex_pixel_y[i],hex_grid_size)
--end



--hex_grid_x = 0
--hex_grid_y = 0
--hex_grid_z = 0
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = -1
--hex_grid_y = 1
--hex_grid_z = 0
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = -1
--hex_grid_y = 0
--hex_grid_z = 1
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = 0
--hex_grid_y = -1
--hex_grid_z = 1
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = 1
--hex_grid_y = -1
--hex_grid_z = 0
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = 1
--hex_grid_y = 0
--hex_grid_z = -1
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)
--
--hex_grid_x = 0
--hex_grid_y = 1
--hex_grid_z = -1
--	
--hex_pixel_x, hex_pixel_y = hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_grid_size)	
--draw_hex.draw(hex_pixel_x,hex_pixel_y,hex_grid_size)



end