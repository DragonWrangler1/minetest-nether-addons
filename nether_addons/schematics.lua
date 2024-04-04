local path = minetest.get_modpath("nether_addons") .. "/schematics/"
--local dpath = minetest.get_modpath("default") .. "/schematics/" 
   
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 20,
		noise_params = {
			offset = -0.000005,
			scale = 0.000015,
			spread = {x = 1, y = 1, z = 1},
			seed = 150,
			octaves = 1,
			persist = 0.000000000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "gold_hoard.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 40,
		noise_params = {
			offset = -0.00005,
			scale = 0.00015,
			spread = {x = 5, y = 5, z = 5},
			seed = 230,
			octaves = 2,
			persist = 0.00000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "the_summoner.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 80,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x = 10, y = 10, z = 10},
			seed = 230,
			octaves = 5,
			persist = 0.000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "decoration_1.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 30,
		noise_params = {
			offset = -0.0000095,
			scale = 0.000075,
			spread = {x = 5, y = 5, z = 5},
			seed = 230,
			octaves = 2,
			persist = 0.00000000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "aurelium_formation_1.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 40,
		noise_params = {
			offset = -0.00005,
			scale = 0.00015,
			spread = {x = 10, y = 10, z = 10},
			seed = 230,
			octaves = 3,
			persist = 0.00000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "aurelium_formation_2.mts",
		flags = "place_center_x",
		rotation = "random",
	})
			minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 50,
		noise_params = {
			offset = -0.00005,
			scale = 0.00015,
			spread = {x = 10, y = 10, z = 10},
			seed = 230,
			octaves = 3,
			persist = 0.0000001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "aurelium_formation_3.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	
	
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"nether:rack"},
		sidelen = 50,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x = 15, y = 15, z = 15},
			seed = 230,
			octaves = 3,
			persist = 0.00001
		},
		biomes = {"nether_caverns"},
		schematic = path .. "water_way.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	minetest.register_decoration({
	name = "Single Nether Crystals",
	deco_type = "simple",
	place_on = {"nether:rack"},
	sidelen = 4,
	fill_ratio = 0.001,
	biomes = {"nether_caverns"},
	y_max = 30912,
	y_min = 20000,
	param2 = 0,
	param2_max = 3,
	flags = "place_center_x,place_center_z,force_placement,all_floors",
	decoration = {
		"nether:big_aurelium_crystal","nether:big_aurelium_crystal_30","nether:big_aurelium_crystal_30_45", "nether:big_aurelium_crystal_90", "nether:big_aurelium_crystal_90_45",
		"nether:med_aurelium_crystal","nether:med_aurelium_crystal_30","nether:med_aurelium_crystal_30_45", "nether:med_aurelium_crystal_90", "nether:med_aurelium_crystal_90_45",
		"nether:small_aurelium_crystal","nether:small_aurelium_crystal_30","nether:small_aurelium_crystal_30_45", "nether:small_aurelium_crystal_90",
		"nether:small_aurelium_crystal_90_45"
	},
})
	
if minetest.get_modpath("nether_mobs") and minetest.get_modpath("beacons") then

local MIN = tonumber(minetest.settings:get("nether_man_beacon_spawning_min"))
local MAX = tonumber(minetest.settings:get("nether_man_beacon_spawning_max"))
	
mobs:spawn({
	name = "nether_mobs:netherman",
	nodes = {"beacons:base_magenta"},
	min_light = 0,
	max_light = 15,
	max_height = MAX,
	min_height = MIN,
	interval = 1,
	chance = 1,
	day_toggle = nil,
	active_object_count = 20,
	on_spawn = function(self, pos)
		pos.y = pos.y + 0.5
		mobs:effect(pos, 30, "nether_particle.png", 0.1, 2, 3, 5)
		pos.y = pos.y + 0.25
		mobs:effect(pos, 30, "nether_particle.png", 0.1, 2, 3, 5)
	end,
	})

end

