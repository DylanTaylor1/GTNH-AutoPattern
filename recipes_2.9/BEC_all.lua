local BEC_parts = require('BEC_parts')
local BEC_eoh = require('BEC_eoh')
local BEC_stargate = require('BEC_stargate')
local BEC_misc = require('BEC_misc')
local BEC_all = {}

table.move(BEC_parts, 1, #BEC_parts, 1, BEC_all)
table.move(BEC_eoh, 1, #BEC_eoh, #BEC_all + 1, BEC_all)
table.move(BEC_stargate, 1, #BEC_stargate, #BEC_all + 1, BEC_all)
table.move(BEC_misc, 1, #BEC_misc, #BEC_all + 1, BEC_all)

return BEC_all