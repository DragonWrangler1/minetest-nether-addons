if  minetest.get_modpath("nether_sword_api") then
minetest.register_tool(":nether:sword_dragon_scale", {
	description = "Dragon Scale Sword",
	inventory_image = "dragon_scale_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps = {
					fleshy = {times = {[1] = 0.90, [2] = 0.50, [3] = 0.20}, uses = 450, maxlevel = 3},
					snappy = {times = {[1] = 1.60, [2] = 0.40, [3] = 0.15}, uses = 250, maxlevel = 3},
					choppy = {times = {[3] = 0.45}, uses = 175, maxlevel = 0},
		},
		damage_groups = {fleshy=18},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 3},
	on_secondary_use = nether_sword_api.fire_sword
})

else

minetest.register_tool(":nether:sword_dragon_scale", {
	description = "Dragon Scale Sword",
	inventory_image = "dragon_scale_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps = {
					fleshy = {times = {[1] = 0.90, [2] = 0.50, [3] = 0.20}, uses = 450, maxlevel = 3},
					snappy = {times = {[1] = 1.60, [2] = 0.40, [3] = 0.15}, uses = 250, maxlevel = 3},
					choppy = {times = {[3] = 0.45}, uses = 175, maxlevel = 0},
		},
		damage_groups = {fleshy=18},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})
end

minetest.register_tool(":nether:dragon_scale_pick", {
	description = ("Dragon Scale Pickaxe"),
	inventory_image = "dragon_scale_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.25, [2]=0.7, [3]=0.2}, uses=105, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":nether:dragon_scale_shovel", {
	description = ("Dragon Scale Shovel"),
	inventory_image = "dragon_scale_shovel.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.5, [2]=0.3, [3]=0.15}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":nether:dragon_scale_axe", {
	description = ("Dragon Scale Axe"),
	inventory_image = "dragon_scale_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.5, [2]=0.4, [3]=0.3}, uses=105, maxlevel=3},
			fleshy = {times = {[2] = 0.85, [3] = 0.30}, uses = 95, maxlevel = 2},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})
