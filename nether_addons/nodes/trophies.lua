local S = minetest.get_translator(minetest.get_current_modname())

if minetest.get_modpath("nether_mobs") then
minetest.register_node(":nether:dragon", {
	description = S("Nether Dragon"),
	visual_size = 2,
	drawtype = "mesh",
	paramtype2 = "facedir",
	mesh = "mobs_nether_dragon.b3d",
	tiles = {"mobs_nether_dragon.png"},
	groups = {cracky=3},
	is_ground_content = true,
})

minetest.register_node(":nether:man", {
	description = S("Nether Man"),
	drawtype = "mesh",
	paramtype2 = "facedir",
	mesh = "mobs_netherman.b3d",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -1.0, -0.5, 0.5, 0.85, 0.5}
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -1.0, -0.5, 0.5, 0.85, 0.5}
		},
	},
	tiles = {"mobs_netherman.png"},
	groups = {cracky=3},
	is_ground_content = true,
})
end
