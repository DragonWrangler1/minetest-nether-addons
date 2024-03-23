local S = minetest.get_translator(minetest.get_current_modname())

local bomb_2_def = {
	description = S("Nether Bomb"),
        tiles = {"nether_bomb.png"},
	is_ground_content = false,
	groups = {cracky=3, pickaxey = 1, building_block = 1, material_stone =1},
	paramtype = "light",
	drawtype = "glasslike",
	light_source = minetest.LIGHT_MAX,
	drop = "",
	sunlight_propagates = true,
}

local tnt_boom = tnt.boom
if tnt_boom then
	bomb_2_def.on_dig = function(pos, node, digger)
		if minetest.node_dig(pos, node, digger) then
			tnt_boom(pos, {radius=10})
		end	
	end
end
minetest.register_node(":nether:bomb", bomb_2_def)
