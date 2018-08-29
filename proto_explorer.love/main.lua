
--require 'lovedebug'

-- to run in notepadd++ copy this into run
---     "D:\Sojourn\prototype\love_prototype\LOVE\love.exe" "$(CURRENT_DIRECTORY)"



function love.load()

game={}
game.version="0.1"
--luascriptpath = "D://Sojourn//prototype//love_prototype//proto_explorer.love//"



--include all states that are in the game

require 'main_menu'
require 'main_menu_explorer'
require 'main_menu_builder'
require 'main_menu_Strategist'
require 'main_menu_planner'
require 'explorer'


require 'mouse'
require 'draw_hex'
require 'hex_grid'


--set the intial state upon application start

state={}
state = main_menu
state.enter_state()


--get game window size
--game_window_width, game_window_height = love.graphics.getDimensions()



end



function love.update(dt)
mouse.update()
state.update()


end



function love.draw()

state.draw()

end


function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end



function change_state( new_state )
state.exit_state()
state = new_state
state.enter_state()
end



