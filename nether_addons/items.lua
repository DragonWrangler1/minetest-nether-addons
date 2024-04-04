local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem(":nether:dragonscale_fragment", {
	description = S("Dragonscale Fragment"),
	inventory_image = "dragonscale_fragment.png",
})

minetest.register_craftitem(":nether:unrefined_dragonscale_fragment", {
	description = S("Unrefined Dragonscale Fragment"),
	inventory_image = "dragonscale_fragment_unrefined.png",
})

minetest.register_craftitem(":nether:aurelium_dust", {
	description = S("Aurelium Dust"),
	inventory_image = "aurelium_dust.png",
})

minetest.register_craftitem(":nether:aurelium_lump", {
	description = S("Aurelium Lump"),
	inventory_image = "aurelium_lump.png",
})

minetest.register_craftitem(":nether:aurelium_ingot", {
	description = S("Aurelium Ingot"),
	inventory_image = "aurelium_ingot.png",
})
