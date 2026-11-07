local NeuComp_singularity1 = require('NeuComp_singularity1')
local NeuComp_singularity2 = require('NeuComp_singularity2')
local NeuComp_blackhole = require('NeuComp_blackhole')
local NeuComp_all = {}

table.move(NeuComp_singularity1, 1, #NeuComp_singularity1, 1, NeuComp_all)
table.move(NeuComp_singularity2, 1, #NeuComp_singularity2, #NeuComp_all + 1, NeuComp_all)
table.move(NeuComp_blackhole, 1, #NeuComp_blackhole, #NeuComp_all + 1, NeuComp_all)

return NeuComp_all