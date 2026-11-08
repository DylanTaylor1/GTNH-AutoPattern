local shell = require('shell')
local args = {...}
local repo = args[1] or 'https://raw.githubusercontent.com/DylanTaylor1/GTNH-AutoPattern/'
local branch = args[2] or 'main'
local dir = 'recipes_2.9'

local scripts = {
  'pattern.lua',
  'scan.lua',
  'uninstall.lua',
  dir .. '/NAC_circuits.lua',
  dir .. '/BEC_parts.lua',
  dir .. '/BEC_EOH.lua',
  dir .. '/BEC_stargate.lua',
  dir .. '/BEC_misc.lua',
  dir .. '/BEC_all.lua',
  dir .. '/COAL_LV-EV.lua',
  dir .. '/COAL_IV-UV.lua',
  dir .. '/COAL_UHV-UMV.lua',
  dir .. '/COAL_UXV.lua',
  dir .. '/COAL_all.lua',
  dir .. '/Dire_tech.lua',
  dir .. '/Dire_gear.lua',
  dir .. '/Dire_creative.lua',
  dir .. '/Dire_endgame.lua',
  dir .. '/Dire_all.lua',
  dir .. '/Comp_HIP1.lua',
  dir .. '/Comp_HIP2.lua',
  dir .. '/Comp_HIP3.lua',
  dir .. '/Comp_singularity1.lua',
  dir .. '/Comp_singularity2.lua',
  dir .. '/Comp_blackhole.lua',
  dir .. '/Comp_all.lua',
  dir .. '/NeuComp_singularity1.lua',
  dir .. '/NeuComp_singularity2.lua',
  dir .. '/NeuComp_blackhole.lua',
  dir .. '/NeuComp_all.lua',
  dir .. '/NanoForge.lua',
  dir .. '/CAL_regular.lua',
  dir .. '/CAL_soc.lua',
  dir .. '/CAL_all.lua',
  dir .. '/TargetChamber.lua',
  dir .. '/BeamCrafter.lua',
  dir .. '/TPM.lua',
  dir .. '/NFR.lua',
  dir .. '/DEFC.lua',
  dir .. '/PCB_T1.lua',
  dir .. '/PCB_T2.lua',
  dir .. '/PCB_T3.lua',
}

-- Create Folder
shell.execute('mkdir -p ' .. dir)

-- Install Files
for i=1, #scripts do
  shell.execute(string.format('wget -f %s%s/%s %s', repo, branch, scripts[i], scripts[i]))
end