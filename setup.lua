local shell = require('shell')
local args = {...}
local branch
local repo
local scripts = {
  'pattern.lua',
  'scan.lua',
  'uninstall.lua',
  'recipes_2.9'}

-- Repo
if #args >= 1 then
    repo = args[1]
else
    repo = 'https://raw.githubusercontent.com/DylanTaylor1/GTNH-AutoPattern/'
end

-- Branch
if #args >= 2 then
    branch = args[2]
else
    branch = 'main'
end

-- Install
for i=1, #scripts do
    shell.execute(string.format('wget -f %s%s/%s', repo, branch, scripts[i]))
end