local component = require('component')
local interface = component.fluid_interface
local file = io.open('/home/result.txt', 'w')
local type

local args = {...}
local mode = args[1]

if mode == 'all' then
  for i=1, 36 do
    local pattern = interface.getInterfacePattern(i)
    if pattern == nil then break end

    local output = pattern.outputs[1]
    if output.maxSize == nil then
      type = 'fluid'
    else
      type = 'item'
    end

    file:write(string.format("  {\n  {type='%s', size=%s, name='%s', damage=%s, label='%s'},\n", type, output.size, output.name, output.damage, output.label))

    local inputs = pattern.inputs
    for j,input in pairs(inputs) do

      if input.maxSize == nil then
        type = 'fluid'
      else
        type = 'item'
      end

      if j == #inputs then
        file:write(string.format("  {type='%s', size=%s, name='%s', damage=%s, label='%s'}},\n", type, input.size, input.name, input.damage, input.label))
      else
        file:write(string.format("  {type='%s', size=%s, name='%s', damage=%s, label='%s'},\n", type, input.size, input.name, input.damage, input.label))
      end
    end
  end

elseif mode == 'name' then
  for i=1, 36 do
    local pattern = interface.getInterfacePattern(i)
    if pattern == nil then break end

    local output = pattern.outputs[1]
    file:write(string.format("%s\n", output.label))
    if i % 9 == 0 then file:write("\n") end
  end
end

file:close()