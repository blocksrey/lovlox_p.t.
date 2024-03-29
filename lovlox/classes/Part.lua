local object    = require("lovlox/object")
local workspace = require("lovlox/globals/vars/workspace")
local vector3   = require("lovlox/type/Vector3")
local cframe    = require("lovlox/type/CFrame")
local color3    = require("lovlox/type/Color3")
local Enum      = require("lovlox/globals/vars/Enum")

local part = {}

function part.new()
	local props = object.getinheritedprops()

	props.Name       = "Part"
	props.ClassName  = "Part"
	props.Anchored   = false
	props.CanCollide = true
	props.CFrame     = cframe.new()
	props.Size       = vector3.new(2, 1, 4)
	props.Color      = color3.new(3/4, 3/4, 3/4)
	props.Shape      = Enum.PartType.Block

	local self = object.new(props)

	workspace:newbody(self)
	
	return self
end

return part