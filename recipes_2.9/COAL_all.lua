local COAL_LVEV = require('COAL_LV-EV')
local COAL_IVUV = require('COAL_IV-UV')
local COAL_UHVUMV = require('COAL_UHV-UMV')
local COAL_UXV = require('COAL_UXV')
local COAL_all = {}

table.move(COAL_LVEV, 1, #COAL_LVEV, 1, COAL_all)
table.move(COAL_IVUV, 1, #COAL_IVUV, #COAL_all + 1, COAL_all)
table.move(COAL_UHVUMV, 1, #COAL_UHVUMV, #COAL_all + 1, COAL_all)
table.move(COAL_UXV, 1, #COAL_UXV, #COAL_all + 1, COAL_all)

return COAL_all