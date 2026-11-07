local CAL_regular = require('CAL_regular')
local CAL_soc = require('CAL_soc')
local CAL_all = {}

table.move(CAL_regular, 1, #CAL_regular, 1, CAL_all)
table.move(CAL_soc, 1, #CAL_soc, #CAL_all + 1, CAL_all)

return CAL_all