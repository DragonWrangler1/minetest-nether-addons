local S = minetest.get_translator(minetest.get_current_modname())

--========================--
--===Dragon Scale Tools===--
--========================--

if  minetest.get_modpath("nether_sword_api") then
minetest.register_tool(":nether:sword_dragon_scale", {
	description = S("Dragon Scale Sword"),
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
	description = S("Dragon Scale Sword"),
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
	description = S("Dragon Scale Pickaxe"),
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
	groups = {pickaxe = 1, silk_touch = 1}
})

minetest.register_tool(":nether:dragon_scale_shovel", {
	description = S("Dragon Scale Shovel"),
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
	description = S("Dragon Scale Axe"),
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

--====================--
--===Aurelium Tools===--
--====================--

minetest.register_tool(":nether:aurelium_sword", {
	description = S("Aurelium Sword"),
	inventory_image = "aurelium_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps = {
					fleshy = {times = {[1] = 1.00, [2] = 0.60, [3] = 0.30}, uses = 250, maxlevel = 3},
					snappy = {times = {[1] = 1.70, [2] = 0.50, [3] = 0.25}, uses = 150, maxlevel = 3},
					choppy = {times = {[3] = 0.6}, uses = 105, maxlevel = 0},
		},
		damage_groups = {fleshy=18},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_tool(":nether:aurelium_pick", {
	description = S("Aurelium Pickaxe"),
	inventory_image = "aurelium_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.4, [2]=0.8, [3]=0.3}, uses=95, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":nether:aurelium_shovel", {
	description = S("Aurelium Shovel"),
	inventory_image = "aurelium_shovel.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.6, [2]=0.4, [3]=0.2}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":nether:aurelium_axe", {
	description = S("Aurelium Axe"),
	inventory_image = "aurelium_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.6, [2]=0.5, [3]=0.4}, uses=95, maxlevel=3},
			fleshy = {times = {[2] = 0.95, [3] = 0.40}, uses = 85, maxlevel = 2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})
