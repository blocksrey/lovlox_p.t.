--globals/funcs
tick      = require("lovlox/globals/funcs/tick")
--globals/vars
Enum      = require("lovlox/globals/vars/Enum")
--enums
require("lovlox/enums/KeyCode")
require("lovlox/enums/Material")
require("lovlox/enums/PartType")
require("lovlox/enums/SurfaceType")
game      = require("lovlox/globals/vars/game")
workspace = require("lovlox/globals/vars/workspace")
--types
CFrame    = require("lovlox/type/CFrame")
Color3    = require("lovlox/type/Color3")
Instance  = require("lovlox/type/Instance")
Ray       = require("lovlox/type/Ray")
Region3   = require("lovlox/type/Region3")
Vector3   = require("lovlox/type/Vector3")

--classes
require("lovlox/classes/ReplicatedFirst")
require("lovlox/classes/RunService")
require("lovlox/classes/UserInputService")

function _G.load(name)
	local find = require("lovlox/test/"..name)
	if find then
		print("load: "..name)
		return find
	else
		print("no find: "..name)
		return nil
	end
end

require("lovlox/test/main")

local lovlox = {}

local runserv = game:GetService("RunService")
local renderstepped = runserv.RenderStepped

function lovlox.update(t1, dt)
	renderstepped(dt)
end

function lovlox.render(meshes)
end

return lovlox