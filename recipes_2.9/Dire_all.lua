local Dire_tech = require('Dire_tech')
local Dire_gear = require('Dire_gear')
local Dire_creative = require('Dire_creative')
local Dire_endgame = require('Dire_endgame')
local Dire_all = {}

table.move(Dire_tech, 1, #Dire_tech, 1, Dire_all)
table.move(Dire_gear, 1, #Dire_gear, #Dire_all + 1, Dire_all)
table.move(Dire_creative, 1, #Dire_creative, #Dire_all + 1, Dire_all)
table.move(Dire_endgame, 1, #Dire_endgame, #Dire_all + 1, Dire_all)

return Dire_all