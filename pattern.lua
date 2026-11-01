package.path = package.path .. ";/home/recipes_2.9/?.lua"

local component = require('component')
local interface = component.fluid_interface
local args = {...}
local recipes = require(args[1])

local function statusCheck()
  if interface == nil then
    print('autoPattern: Cannot Find ME Interface!')
    return false
  end

  if recipes == nil then
    print('autoPattern: Cannot Find Recipes, Check the Spelling of the Key!')
    return false
  end

  return true
end

local function autoPattern(i, recipe)
  interface.setInterfacePatternOutput(i, 1, recipe[1], recipe[1].type)
  for j=1, #recipe-1 do
    interface.setInterfacePatternInput(i, j, recipe[j+1], recipe[j+1].type)
  end
end

if statusCheck() then
  print(string.format('autoPattern: Writing %s Patterns!', #recipes))
  for i=1, #recipes do

    if interface.getInterfacePattern ~= nil then
      autoPattern(i, recipes[i])
    else
      print('autoPattern: Ran out of Patterns!')
      break
    end
  end
  print('autoPattern: Success!')
end