local Comp_HIP1 = require('Comp_HIP1')
local Comp_HIP2 = require('Comp_HIP2')
local Comp_HIP3 = require('Comp_HIP3')
local Comp_singularity1 = require('Comp_singularity1')
local Comp_singularity2 = require('Comp_singularity2')
local Comp_blackhole = require('Comp_blackhole')
local Comp_all = {}

table.move(Comp_HIP1, 1, #Comp_HIP1, 1, Comp_all)
table.move(Comp_HIP2, 1, #Comp_HIP2, #Comp_all + 1, Comp_all)
table.move(Comp_HIP3, 1, #Comp_HIP3, #Comp_all + 1, Comp_all)
table.move(Comp_singularity1, 1, #Comp_singularity1, #Comp_all + 1, Comp_all)
table.move(Comp_singularity2, 1, #Comp_singularity2, #Comp_all + 1, Comp_all)
table.move(Comp_blackhole, 1, #Comp_blackhole, #Comp_all + 1, Comp_all)

return Comp_all