local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node(":nether:rack_with_dragonscale_fragments", {
	description = S("Nether Rack with dragonscale fragments"),
	tiles = {"dragonscale_infused_nether_rack.png"},
	groups = {cracky=3},
	drop = "nether:unrefined_dragonscale_fragment",
	is_ground_content = true,
})

minetest.register_node(":nether:rack_deep_with_dragonscale_fragments", {
	description = S("Deep Nether Rack with dragonscale fragments"),
	tiles = {"dragonscale_infused_deep_nether_rack.png"},
	groups = {cracky=3},
	drop = "nether:unrefined_dragonscale_fragment",
	is_ground_content = true,
})

minetest.register_node(":nether:basalt_with_dragonscale_fragments", {
	description = S("Nether basalt with dragonscale fragments"),
	tiles = {"dragonscale_infused_nether_basalt.png",
	         "dragonscale_infused_nether_basalt.png",
	        "nether_basalt_with_dragonscale_side.png",
	        "nether_basalt_with_dragonscale_side.png",
	         "nether_basalt_with_dragonscale_side.png",
	        "nether_basalt_with_dragonscale_side.png"},
	groups = {cracky = 1, level = 2}, -- set proper digging times and uses, and maybe explosion immune if api handles that
	on_blast = function() --[[blast proof]] end,
	drop = "nether:unrefined_dragonscale_fragment",
	is_ground_content = true,
})

minetest.register_ore({
			ore_type = "cluster",
			ore = "nether:rack_with_dragonscale_fragments",
			wherein = spawn_within,
			clust_scarcity = 50*50*50,
			clust_num_ores = 1,
			clust_size = 1,
			nodes = "nether:rack",
		})
		
		minetest.register_ore({
			ore_type = "cluster",
			ore = "nether:rack_deep_with_dragonscale_fragments",
			wherein = spawn_within,
			clust_scarcity = 50*50*50,
			clust_num_ores = 1,
			clust_size = 1,
			nodes = "nether:rack_deep",
		})

		minetest.register_ore({
			ore_type = "cluster",
			ore = "nether:basalt_with_dragonscale_fragments",
			wherein = spawn_within,
			clust_scarcity = 50*50*50,
			clust_num_ores = 1,
			clust_size = 1,
			nodes = "nether:basalt",
		})
