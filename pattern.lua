package.path = package.path .. ";/home/recipes_2.9/?.lua"

local component = require('component')
local args = {...}
local recipes = require(args[1])
local interfaces = {}

-- ========== Functions ==========

local function findInterfaces()
  for address in component.list('fluid_interface') do
    local interface = component.proxy(address)
    table.insert(interfaces, interface)
  end
end

local function statusCheck()
  findInterfaces()
  if #interfaces == 0 then
    print('autoPattern: Cannot Find an ME Dual Interface!')
    return false
  end

  if recipes == nil then
    print('autoPattern: Cannot Find Recipes, Check the Spelling of the Key!')
    return false
  end

  return true
end

local function autoPattern(interface, slot, recipe)
  interface.setInterfacePatternOutput(slot, 1, recipe[1], recipe[1].type)
  for j=2, #recipe do
    interface.setInterfacePatternInput(slot, j, recipe[j], recipe[j].type)
  end
end

-- ========== Main ==========

if statusCheck() then
  print(string.format('autoPattern: Writing %s Patterns!', #recipes))
  for i=1, #recipes do

    local interface = interfaces[math.ceil(i / 36)]
    local slot = ((i-1) % 36) + 1

    if interface.getInterfacePattern(slot) ~= nil then
      autoPattern(interface, slot, recipes[i])
    else
      print('autoPattern: Ran out of Dummy Patterns!')
      break
    end
  end
  print('autoPattern: Success!')
end