local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node(":nether:big_test_crystal", {
	description = S("Giant test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_big.obj",
	tiles = {
		"tmp_4x.png",
		"tmp.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	light_source = 15,
	groups = {cracky=2,  pickaxey=5, material_stone=1, enderman_takable=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 3, 0.5},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 3, 0.5},
	},
})

minetest.register_node(":nether:med_test_crystal", {
	description = S("Big test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_med.obj",
	tiles = {
		"tmp.png",
		"tmp_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	light_source = 15,
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 1.25, 0.25},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 1.25, 0.25},
	},
})


minetest.register_node(":nether:big_test_crystal_30", {
	description = S("Giant test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_big.obj",
	tiles = {
		"tmp_4x.png",
		"tmp.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:big_test_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1, enderman_takable=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.625, 0.5, 0.5, 0.375},
			{-0.5, 0.5, -1.25, 0.5, 1.5, -0.25},
			{-0.5, 1.5, -1.875, 0.5, 2.5, -0.875},
			--The following is a more accurate set of collision boxes that theoretically
			--allows the crystal to be climbed like stairs, but in practice the physics
			--don't seem to work quite right so I'm leaving it "simple" for now.
--			{-0.5, -0.5, -0.625, 0.5, 0.0, 0.375},
--			{-0.5, 0.0, -0.9375, 0.5, 0.5, 0.0625},
--			{-0.5, 0.5, -1.25, 0.5, 1.0, -0.25},
--			{-0.5, 1.0, -1.5625, 0.5, 1.5, -0.5625},
--			{-0.5, 1.5, -1.875, 0.5, 2.0, -0.875},
--			{-0.25, 2.0, -1.625, 0.25, 2.5, -1.125},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.625, 0.5, 0.5, 0.375},
			{-0.5, 0.5, -1.25, 0.5, 1.5, -0.25},
			{-0.5, 1.5, -1.875, 0.5, 2.5, -0.875},
--			{-0.5, -0.5, -0.625, 0.5, 0.0, 0.375},
--			{-0.5, 0.0, -0.9375, 0.5, 0.5, 0.0625},
--			{-0.5, 0.5, -1.25, 0.5, 1.0, -0.25},
--			{-0.5, 1.0, -1.5625, 0.5, 1.5, -0.5625},
--			{-0.5, 1.5, -1.875, 0.5, 2.0, -0.875},
--			{-0.25, 2.0, -1.625, 0.25, 2.5, -1.125},
		},
	},
})

minetest.register_node(":nether:med_test_crystal_30", {
	description = S("Big test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_med.obj",
	tiles = {
		"tmp.png",
		"tmp_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:med_test_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, 0.0, 0.1875},
			{-0.25, 0.0, -0.625, 0.25, 0.5, -0.125},
			{-0.25, 0.5, -0.9375, 0.25, 1.0, -0.4375},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, 0.0, 0.1875},
			{-0.25, 0.0, -0.625, 0.25, 0.5, -0.125},
			{-0.25, 0.5, -0.9375, 0.25, 1.0, -0.4375},
		},
	},
})

minetest.register_node(":nether:big_test_crystal_30_45", {
	description = S("Giant test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_45_big.obj",
	tiles = {
		"tmp_4x.png",
		"tmp.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:big_test_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1, enderman_takable=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.625, 0.625, 0.5, 0.375},
			{0.0625, 0.5, -1.0625, 1.0625, 1.5, -0.0625},
			{0.5, 1.5, -1.5, 1.5, 2.5, -0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.625, 0.625, 0.5, 0.375},
			{0.0625, 0.5, -1.0625, 1.0625, 1.5, -0.0625},
			{0.5, 1.5, -1.5, 1.5, 2.5, -0.5},
		},
	},
})


minetest.register_node(":nether:med_test_crystal_30_45", {
	description = S("Big test Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_45_med.obj",
	tiles = {
		"tmp_4x.png",
		"tmp.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:med_test_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, 0.0, -0.53125, 0.53125, 0.5, -0.03125},
			{0.25, 0.5, -0.75, 0.75, 1.0, -0.25},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, 0.0, -0.53125, 0.53125, 0.5, -0.03125},
			{0.25, 0.5, -0.75, 0.75, 1.0, -0.25},
		},
	},
})
