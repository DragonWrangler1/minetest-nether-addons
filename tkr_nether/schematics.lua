local path = minetest.get_modpath("nether_addons") .. "/schematics/"
local dpath = minetest.get_modpath("default") .. "/schematics/" 
   
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 80,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.0000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "gold_hoard.mts",
		flags = "place_center_x",
		rotation = "random",
	})

