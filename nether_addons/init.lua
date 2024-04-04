local S = minetest.get_translator(minetest.get_current_modname())

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

nether_addons = {}

--===============--
--===Test File===--
--===============--


--dofile(modpath.."/nodes/crystal_nodes_test.lua")


--==================--
--===Normal Files===--
--==================--


dofile(modpath.."/schematics.lua")
dofile(modpath.."/nodes/crystal_nodes.lua")
dofile(modpath.."/nodes/spare.lua")
dofile(modpath.."/nodes/trophies.lua")
dofile(modpath.."/nodes/lava_crust.lua")
dofile(modpath.."/nodes/decor.lua")
dofile(modpath.."/nodes/ores.lua")
dofile(modpath.."/items.lua")
dofile(modpath.."/crafts.lua")
dofile(modpath.."/bomb.lua")
dofile(modpath.."/tnt_stick.lua")
dofile(modpath.."/tools.lua")
dofile(modpath.."/abm_&_lbm.lua")
dofile(modpath.."/nodes/water.lua")
if minetest.get_modpath("3d_armor") then
dofile(modpath.."/armor.lua")
end


