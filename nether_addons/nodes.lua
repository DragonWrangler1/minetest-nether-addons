minetest.register_node(":nether:rack_with_dragonscale_fragments", {
	description = S("Nether Rack with dragonscale fragments"),
	tiles = {"dragonscale_infused_nether_rack.png"},
	groups = {cracky=3},
	drop = "nether:unrefined_dragonscale_fragment",
	is_ground_content = true,
})
if minetest.get_modpath("nether_mobs") then
minetest.register_node(":nether:dragon", {
	description = S("Nether Dragon"),
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
			-- Damage is calculated "starting 0.1 above feet
			-- and progressing upwards in 1 node intervals", so
			-- lower this node's collision box by more than 0.1
			-- to ensure damage will be taken when standing on
			-- the node.
			{-0.5, -1.0, -0.5, 0.5, 0.85, 0.5}
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			-- Keep the selection box matching the visual node,
			-- rather than the collision_box.
			{-0.5, -1.0, -0.5, 0.5, 0.85, 0.5}
		},
	},
	tiles = {"mobs_netherman.png"},
	groups = {cracky=3},
	is_ground_content = true,
})
end

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


minetest.register_craftitem(":nether:dragonscale_fragment", {
	description = S("Dragonscale Fragment"),
	inventory_image = "dragonscale_fragment.png",
})

minetest.register_craftitem(":nether:unrefined_dragonscale_fragment", {
	description = S(" Unrefined Dragonscale Fragment"),
	inventory_image = "dragonscale_fragment_unrefined.png",
})

minetest.register_node(":nether:nether_block", {
	description = S("Nether Block"),
	tiles = {"nether_nether_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node(":nether:nether_block_carved", {
	description = S("Carved Nether Block"),
	tiles = {"nether_nether_block_carved.png"},
	groups = {cracky=2},
	paramtype = "light",
	light_source = 8,
	is_ground_content = false,
})

minetest.register_node(":nether:hewn_basalt_brick", {
	description = S("Hewn Nether Basalt Brick"),
	tiles = {
		"hewn_nether_basalt_brick.png"
	},
	is_ground_content = true,
	groups = {cracky = 1, level = 2}, -- set proper digging times and uses, and maybe explosion immune if api handles that
	on_blast = function() --[[blast proof]] end,
	sounds = default.node_sound_stone_defaults(),
})
