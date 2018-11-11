hex_grid = {}


function hex_grid.convert_to_pixel(hex_grid_origin_x, hex_grid_origin_y, hex_grid_x, hex_grid_y, hex_grid_z, hex_size)

local hex_width = 2* hex_size
local hex_height = math.sqrt(3) * hex_size

local x_transform = 0.75 * hex_width * hex_grid_x
local y_transform = 0.5 * hex_height * (hex_grid_y - hex_grid_z)

hex_pixel_x = hex_grid_origin_x + x_transform
hex_pixel_y = hex_grid_origin_y - y_transform

return hex_pixel_x, hex_pixel_y
end

