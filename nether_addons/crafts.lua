
minetest.register_craft({
	output = "nether:nether_block",
	recipe = {
		{"nether:nether_ingot", "nether:nether_ingot", "nether:nether_ingot"},
		{"nether:nether_ingot", "nether:nether_ingot", "nether:nether_ingot"},
		{"nether:nether_ingot", "nether:nether_ingot", "nether:nether_ingot"}
	}
})

minetest.register_craft({
	output = "nether_mobs:dragon_scale",
	recipe = {
		{"nether:dragonscale_fragment", "nether:dragonscale_fragment", "nether:dragonscale_fragment"},
		{"nether:dragonscale_fragment", "nether:dragonscale_fragment", "nether:dragonscale_fragment"},
		{"nether:dragonscale_fragment", "nether:dragonscale_fragment", "nether:dragonscale_fragment"}
	}
})

minetest.register_craft({
	output = "nether:hewn_basalt_brick",
	recipe = {
		{"nether:basalt_hewn", "nether:basalt_hewn", "nether:basalt_hewn"},
		{"nether:basalt_hewn", "", "nether:basalt_hewn"},
		{"nether:basalt_hewn", "nether:basalt_hewn", "nether:basalt_hewn"}
	}
})

minetest.register_craft({
	output = "nether:sword_dragon_scale",
	recipe = {
		{"nether_mobs:dragon_scale", "", ""},
		{"nether_mobs:dragon_scale", "", ""},
		{"nether:nether_ingot", "", ""}
	}
})

minetest.register_craft({
	output = "nether:dragon_scale_pick",
	recipe = {
		{"nether_mobs:dragon_scale", "nether_mobs:dragon_scale", "nether_mobs:dragon_scale"},
		{"", "nether:nether_ingot", ""},
		{"", "nether:nether_ingot", ""}
	}
})

minetest.register_craft({
	output = "nether:dragon_scale_axe",
	recipe = {
		{"nether_mobs:dragon_scale", "nether_mobs:dragon_scale", ""},
		{"nether_mobs:dragon_scale", "nether:nether_ingot", ""},
		{"", "nether:nether_ingot", ""}
	}
})

minetest.register_craft({
	output = "nether:dragon_scale_shovel",
	recipe = {
		{"nether_mobs:dragon_scale", "", ""},
		{"nether:nether_ingot", "", ""},
		{"nether:nether_ingot", "", ""}
	}
})



minetest.register_craft({
	output = "nether:dragonscale_fragment",
	recipe = {
		{"nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment"},
		{"nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment"},
		{"nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment", "nether:unrefined_dragonscale_fragment"}
	}
})

minetest.register_craft({
	output = "nether:nether_block_carved",
	recipe = {
		{"nether:nether_ingot", "nether:nether_lump", "nether:nether_ingot"},
		{"nether:nether_lump", "default:torch", "nether:nether_lump"},
		{"nether:nether_ingot", "nether:nether_lump", "nether:nether_ingot"}
	}
})

minetest.register_craft({
	output = "nether:bomb 4",
	recipe = {
		{"nether:nether_block", "tnt:tnt_stick", "nether:nether_block"},
		{"tnt:tnt_stick", "default:torch", "tnt:tnt_stick"},
		{"nether:nether_block", "tnt:tnt_stick", "nether:nether_block"}
	}
})
minetest.register_craft({
	output = "nether:lava_crust_lamp_post",
	recipe = {
		{"", "default:glass", ""},
		{"nether:lava_crust", "nether:lava_crust", "nether:lava_crust"},
		{"", "nether:brick", ""},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "nether:aurelium_dust",
	recipe = "nether_addons:bucket_aurelium_water",
	cooktime = 10,
})

minetest.register_craft({
	output = "nether:aurelium_lump",
 recipe = {
		{"nether:aurelium_dust", "nether:aurelium_dust" , "nether:aurelium_dust"},
		{"nether:aurelium_dust", "nether_addons:bucket_hot_water" ,"nether:aurelium_dust" },
		{"nether:aurelium_dust", "nether:aurelium_dust", "nether:aurelium_dust"},
	},
	replacements = {{"nether_addons:bucket_hot_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	type = "cooking",
	output = "nether:aurelium_ingot",
	recipe = "nether:aurelium_lump",
	cooktime = 15,
})

minetest.register_craft({
	output = "nether:aurelium_sword",
	recipe = {
		{"nether:aurelium_ingot", "", ""},
		{"nether:aurelium_ingot", "", ""},
		{"default:stick", "", ""}
	}
})

minetest.register_craft({
	output = "nether:aurelium_pick",
	recipe = {
		{"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "nether:aurelium_axe",
	recipe = {
		{"nether:aurelium_ingot", "nether:aurelium_ingot", ""},
		{"nether:aurelium_ingot", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "nether:aurelium_shovel",
	recipe = {
		{"nether:aurelium_ingot", "", ""},
		{"default:stick", "", ""},
		{"default:stick", "", ""}
	}
})






--=======================--
--===Aurelium Crafting===--
--=======================--

minetest.register_craft({
	output = "nether:big_aurelium_crystal",
	recipe = {
	{"", "nether:big_aurelium_crystal_90_45", ""},
	}
})
minetest.register_craft({
	output = "nether:big_aurelium_crystal_90_45",
	recipe = {
	{"", "nether:big_aurelium_crystal_90", ""},
	}
})
minetest.register_craft({
	output = "nether:big_aurelium_crystal_90",
	recipe = {
	{"","nether:big_aurelium_crystal_30_45", ""},
	}
})
minetest.register_craft({
	output = "nether:big_aurelium_crystal_30_45",
	recipe = {
	{"", "nether:big_aurelium_crystal_30", ""},
	}
})
minetest.register_craft({
	output = "nether:big_aurelium_crystal_30",
	recipe = {
	{"", "nether:big_aurelium_crystal",  ""},
	}
})

minetest.register_craft({
	output = "nether:med_aurelium_crystal",
	recipe = {
	{"", "nether:med_aurelium_crystal_90_45", ""},
	}
})
minetest.register_craft({
	output = "nether:med_aurelium_crystal_90_45",
	recipe = {
	{"", "nether:med_aurelium_crystal_90", ""},
	}
})
minetest.register_craft({
	output = "nether:med_aurelium_crystal_90",
	recipe = {
	{"","nether:med_aurelium_crystal_30_45", ""},
	}
})
minetest.register_craft({
	output = "nether:med_aurelium_crystal_30_45",
	recipe = {
	{"", "nether:med_aurelium_crystal_30", ""},
	}
})
minetest.register_craft({
	output = "nether:med_aurelium_crystal_30",
	recipe = {
	{"", "nether:med_aurelium_crystal",  ""},
	}
})

minetest.register_craft({
	output = "nether:small_aurelium_crystal",
	recipe = {
	{"", "nether:small_aurelium_crystal_90_45", ""},
	}
})
minetest.register_craft({
	output = "nether:small_aurelium_crystal_90_45",
	recipe = {
	{"", "nether:small_aurelium_crystal_90", ""},
	}
})
minetest.register_craft({
	output = "nether:small_aurelium_crystal_90",
	recipe = {
	{"","nether:small_aurelium_crystal_30_45", ""},
	}
})
minetest.register_craft({
	output = "nether:small_aurelium_crystal_30_45",
	recipe = {
	{"", "nether:small_aurelium_crystal_30", ""},
	}
})
minetest.register_craft({
	output = "nether:small_aurelium_crystal_30",
	recipe = {
	{"", "nether:small_aurelium_crystal",  ""},
	}
})
