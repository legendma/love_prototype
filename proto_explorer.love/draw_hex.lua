draw_hex = {}

draw_hex.hex_pixel_x = {}
draw_hex.hex_pixel_y = {}
draw_hex.hex_size ={}   -- the grid size for the hexigon.  must be divisible by 4.

vertex = {}
vertex.x = {}
vertex.y = {}

for i= 0,5 do
vertex.x[i] = nil
vertex.y[i] = nil
end


function draw_hex.draw(hex_pixel_x, hex_pixel_y, hex_size)

local hex_width = 2* hex_size
local hex_height = math.sqrt(3) * hex_size

local hex_width_d2 = hex_width/2
local hex_width_d4 = hex_width/4
local hex_height_d2 = hex_height/2




vertex.x[0] = hex_pixel_x - hex_width_d2  --left more vertex of flat-top hexigon.  subsequest verticies are clockwise from this
vertex.y[0] = hex_pixel_y
               
vertex.x[1] = hex_pixel_x - hex_width_d4
vertex.y[1] = hex_pixel_y + hex_height_d2
                 
vertex.x[2] = hex_pixel_x + hex_width_d4
vertex.y[2] = hex_pixel_y + hex_height_d2
                 
vertex.x[3] = hex_pixel_x + hex_width_d2
vertex.y[3] = hex_pixel_y
                 
vertex.x[4] = hex_pixel_x + hex_width_d4
vertex.y[4] = hex_pixel_y - hex_height_d2
                 
vertex.x[5] = hex_pixel_x - hex_width_d4
vertex.y[5] = hex_pixel_y - hex_height_d2
             


local verticies = {vertex.x[0], vertex.y[0],vertex.x[1], vertex.y[1],vertex.x[2], vertex.y[2],vertex.x[3], vertex.y[3],vertex.x[4], vertex.y[4],vertex.x[5], vertex.y[5]}



love.graphics.polygon( 'line', verticies )

end

