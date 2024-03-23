
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
	output = "nether:dragon_scale_shovel",
	recipe = {
		{"nether_mobs:dragon_scale", "nether_mobs:dragon_scale", ""},
		{"nether_mobs:dragon_scale", "nether:nether_ingot", ""},
		{"", "nether:nether_ingot", ""}
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

if minetest.get_modpath("throwable_bombs") then
minetest.register_craft({
	output = "nether:bomb_ultimate 2",
	recipe = {
		{"nether:bomb", "tnt:gunpowder", "nether:bomb"},
		{"tnt:gunpowder", "nether:bomb", "tnt:gunpowder"},
		{"nether:bomb", "tnt:gunpowder", "nether:bomb"}
	}
})
end
