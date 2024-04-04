local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node(":nether:big_aurelium_crystal", {
	description = S("Giant Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_big.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
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

minetest.register_node(":nether:med_aurelium_crystal", {
	description = S("Medium Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_med.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
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

minetest.register_node(":nether:small_aurelium_crystal", {
	description = S("Small Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_small.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	light_source = 15,
	groups = {cracky=2,  pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.35, 0.15},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.35, 0.15},
	},
})


minetest.register_node(":nether:big_aurelium_crystal_30", {
	description = S("Giant Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_big.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:big_aurelium_crystal",
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

minetest.register_node(":nether:med_aurelium_crystal_30", {
	description = S("Medium Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_med.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:med_aurelium_crystal",
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

minetest.register_node(":nether:small_aurelium_crystal_30", {
	description = S("Small Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_small.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:small_aurelium_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.15, -0.5, -0.3125, 0.15, 0.0, 0.1875},
			{-0.15, 0.0, -0.625, 0.15, 0.5, -0.125},
			--{-0.15, 0.5, -0.9375, 0.15, 1.0, -0.4375},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, 0.0, 0.1875},
			{-0.25, 0.0, -0.625, 0.25, 0.5, -0.125},
			--{-0.25, 0.5, -0.9375, 0.25, 1.0, -0.4375},
		},
	},
})

minetest.register_node(":nether:big_aurelium_crystal_30_45", {
	description = S("Giant Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_45_big.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:big_aurelium_crystal",
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


minetest.register_node(":nether:med_aurelium_crystal_30_45", {
	description = S("Medium Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_45_med.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:med_aurelium_crystal",
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

minetest.register_node(":nether:small_aurelium_crystal_30_45", {
	description = S("Small Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_30_45_small.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 15,
	drop = "nether:small_aurelium_crystal",
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, 0.0, -0.53125, 0.53125, 0.5, -0.03125},
		--	{0.25, 0.5, -0.75, 0.75, 1.0, -0.25},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, 0.0, -0.53125, 0.53125, 0.5, -0.03125},
		--	{0.25, 0.5, -0.75, 0.75, 1.0, -0.25},
		},
	},
})

minetest.register_node(":nether:big_aurelium_crystal_90", {
	description = S("Giant Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_big.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "nether:big_aurelium_crystal",
	is_ground_content = false,
	sunlight_propagates = true,
	light_source = 15,
	groups = {cracky=2,  pickaxey=5, material_stone=1, enderman_takable=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -3, 0.5, 0.5, 0.5},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -3, 0.5, 0.5, 0.5},
	},
})

minetest.register_node(":nether:med_aurelium_crystal_90", {
	description = S("Medium Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_med.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	drop = "nether:med_aurelium_crystal",
	light_source = 15,
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -1.25, 0.25, 0.05, 0.5},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -1.25, 0.25, 0.05, 0.5},
	},
})

minetest.register_node(":nether:small_aurelium_crystal_90", {
	description = S("Small Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_small.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	drop = "nether:small_aurelium_crystal",
	light_source = 15,
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.15, -0.15, -0.35, 0.15, 0.15, 0.5},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.35, 0.15},
	},
})


minetest.register_node(":nether:big_aurelium_crystal_90_45", {
	description = S("Giant Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_45_big.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "nether:big_aurelium_crystal",
	is_ground_content = false,
	sunlight_propagates = true,
	light_source = 15,
	groups = {cracky=2,  pickaxey=5, material_stone=1, enderman_takable=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.625, 0.625, 0.5, 0.375},
			{-0.0625, -0.5, 1.0625, -1.0625, 0.5, 0.0625},
			{-0.5, -0.5, 1.5, -1.5, 0.5, 0.5},
			{-0.94, -0.5, 1.94, -1.94, 0.5, 0.94},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.625, 0.625, 0.5, 0.375},
			{-0.0625, -0.5, 1.0625, -1.0625, 0.5, 0.0625},
			{-0.5, -0.5, 1.5, -1.5, 0.5, 0.5},
			{-0.94, -0.5, 1.94, -1.94, 0.5, 0.94},
		},
	},
})

--[[			
			{-0.375, -0.5, -0.625, 0.625, 0.5, 0.375},
			{0.0625, 0.5, -1.0625, 1.0625, 1.5, -0.0625},
			{0.5, 1.5, -1.5, 1.5, 2.5, -0.5},
			]]


minetest.register_node(":nether:med_aurelium_crystal_90_45", {
	description = S("Medium Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_45_med.obj",
	tiles = {
		"glowing_aurelium_crystal_24x.png",
		"glowing_aurelium_crystal_2.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	drop = "nether:med_aurelium_crystal",
	light_source = 15,
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
		--The Selection Box isn't perfect and I may change it later on, but for now it will work.
			{-0.1875, -0.5, -0.3125, 0.3125, 0.2, 0.1875},
			{0.03125, -0.5, -0.53125, 0.53125, 0.2, -0.03125},
			{0.03, -0.5, 0.5, -0.5, 0.2, -0.03},
			{-0.2, -0.5, 0.8, -0.8, 0.2, 0.2},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.2, 0.1875},
			{0.03125, -0.5, -0.53125, 0.53125, 0.2, -0.03125},
			{0.03, -0.5, 0.5, -0.5, 0.2, -0.03},
			{-0.2, -0.5, 0.8, -0.8, 0.2, 0.2},
		},
	},
})

minetest.register_node(":nether:small_aurelium_crystal_90_45", {
	description = S("Small Aurelium Crystal"),
	drawtype = "mesh",
	mesh = "hex_crystal_90_45_small.obj",
	tiles = {
		"glowing_aurelium_crystal_2.png",
		"glowing_aurelium_crystal_2_quarter.png",
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	sunlight_propagates = true,
	drop = "nether:small_aurelium_crystal",
	light_source = 15,
	groups = {cracky=2, pickaxey=5, material_stone=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, -0.5, -0.53125, 0.53125, 0.0, -0.03125},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.3125, 0.0, 0.1875},
			{0.03125, -0.5, -0.53125, 0.53125, 0.0, -0.03125},
		},
	},
})
