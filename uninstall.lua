local shell = require('shell')
local dir = 'recipes_2.9'

local scripts = {
  'setup.lua',
  'pattern.lua',
  'scan.lua',
  'uninstall.lua'}

-- Uninstall Files
for i=1, #scripts do
    shell.execute(string.format('rm %s', scripts[i]))
    print(string.format('Uninstalled %s', scripts[i]))
end

-- Uninstall Folder
shell.execute('rm -r ' .. dir)
print(string.format('Uninstalled %s', dir))