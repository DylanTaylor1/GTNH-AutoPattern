local Dire_tech = require('Dire_tech')
local Dire_gear = require('Dire_gear')
local Dire_creative = require('Dire_creative')
local Dire_stargate = require('Dire_stargate')
local Dire_all = {}

table.move(Dire_tech, 1, #Dire_tech, 1, Dire_all)
table.move(Dire_gear, 1, #Dire_gear, #Dire_all + 1, Dire_all)
table.move(Dire_creative, 1, #Dire_creative, #Dire_all + 1, Dire_all)
table.move(Dire_stargate, 1, #Dire_stargate, #Dire_all + 1, Dire_all)

return Dire_all