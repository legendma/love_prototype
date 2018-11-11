generate_hex_grid_coords = {}


-- currently this is only capable of generating hex coords for x=y and x==odd
-- x_tiles and y_tiles are the size of the hex grid.  i.e. 3x3, 5x2, 7x7, etc

function generate_hex_grid_coords.generate(x_tiles, y_tiles)

x_tile_coord = {}
y_tile_coord = {}
z_tile_coord = {}

if x_tiles == y_tiles then

	if (x_tiles % 2 == 0) then
	return 0
	
	else
		local coord_range = math.floor(x_tiles/2)
		local neg_coord_range = 0- coord_range
		
		if coord_range > 0 == true then
		
		local i = 0
		
			for xpi=0,coord_range do
				for ypi = 0, coord_range do
				
				z_val_Check = 0-xpi - ypi
				
				if (z_val_Check > coord_range ==false) and (z_val_Check < neg_coord_range ==false)then
			
					x_tile_coord[i] = xpi
					y_tile_coord[i] = ypi
					z_tile_coord[i] = 0-xpi-ypi
				
					i = i + 1
				end
				
				
				
				end
				
				for ypi = -1, neg_coord_range, -1 do
				z_val_Check = 0-xpi - ypi
				if (z_val_Check > coord_range ==false) and (z_val_Check < neg_coord_range ==false)then
			
					x_tile_coord[i] = xpi
					y_tile_coord[i] = ypi
					z_tile_coord[i] = 0-xpi-ypi
				
					i = i + 1
				end
				
				end
				
				
			end
			
			for xpi=-1,neg_coord_range, -1 do
				for ypi = 0, coord_range do
				
				z_val_Check = 0-xpi - ypi
				if (z_val_Check > coord_range ==false) and (z_val_Check < neg_coord_range ==false)then
			
					x_tile_coord[i] = xpi
					y_tile_coord[i] = ypi
					z_tile_coord[i] = 0-xpi-ypi
				
					i = i + 1
				end
				end
			
				
				
				for ypi = -1, neg_coord_range, -1 do
				
				z_val_Check = 0-xpi - ypi
				if (z_val_Check > coord_range ==false) and (z_val_Check < neg_coord_range ==false)then
			
					x_tile_coord[i] = xpi
					y_tile_coord[i] = ypi
					z_tile_coord[i] = 0-xpi-ypi
				
					i = i + 1
				end
				
				
			
				end	
			end
			
			
		
		
		
		else  
		x_tile_coord[0] = 0
		y_tile_coord[0] = 0
		z_tile_coord[0] = 0
		end
		
		return x_tile_coord, y_tile_coord, z_tile_coord
	
	end
end
	
	
end