local shell = require('shell')
local scripts = {
  'pattern.lua',
  'scan.lua',
  'uninstall.lua',
  'recipes_2.9'}

-- UNINSTALL
for i=1, #scripts do
    shell.execute(string.format('rm %s', scripts[i]))
    print(string.format('Uninstalled %s', scripts[i]))
end