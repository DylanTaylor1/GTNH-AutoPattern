local shell = require('shell')
local args = {...}
local repo = args[1] or 'https://raw.githubusercontent.com/DylanTaylor1/GTNH-AutoPattern/'
local branch = args[2] or 'main'
local dir = 'recipes_2.9'

local scripts = {
  'pattern.lua',
  'scan.lua',
  'uninstall.lua',
  dir .. '/NAC_circuits.lua'}

-- Create Folder
shell.execute('mkdir -p ' .. dir)

-- Install Files
for i=1, #scripts do
  shell.execute(string.format('wget -f %s%s/%s %s', repo, branch, scripts[i], scripts[i]))
end