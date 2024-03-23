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
