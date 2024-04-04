local S = minetest.get_translator(minetest.get_current_modname())

--[[if minetest.settings:get_bool('nether_aurelium_armor_alt') then



	armor:register_armor(":3d_armor:helmet_aurelium_alt", {
		description = S("Aurelium Helmet"),
		inventory_image = "3d_armor_inv_helmet_aurelium_alt.png",
		groups = {armor_head=1, armor_heal=15, armor_use=50, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_aurelium_alt", {
		description = S("Aurelium Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_aurelium_alt.png",
		groups = {armor_torso=1, armor_heal=24, physics_speed=1.5, armor_use=50, armor_fire=4},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_aurelium_alt", {
		description = S("Aurelium Boots"),
		inventory_image = "3d_armor_inv_boots_aurelium_alt.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=50, physics_gravity=.5},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
		armor:register_armor(":3d_armor:leggings_aurelium_alt", {
		description = S("Aurelium Leggings"),
		inventory_image = "3d_armor_inv_leggings_aurelium_alt.png",
		groups = {armor_legs=1, armor_heal=19, physics_jump=1.0, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	
	if minetest.get_modpath("shields") then
		armor:register_armor(":shields:shield_aurelium_alt", {
		description = S("Aurelium Shield"),
		inventory_image = "shields_inv_shield_aurelium_alt.png",
		groups = {armor_shield=1, armor_heal=20, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
		reciprocate_damage = true,
		--[[on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,]]
	--[[})
	end
	
	   minetest.register_craft({
        output = "3d_armor:helmet_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:chestplate_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:leggings_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:boots_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"", "", ""},
        }
    })
    
        minetest.register_craft({
        output = "shields:shield_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"", "nether:aurelium_ingot", ""},
        }
    })


else

end]]

if not minetest.settings:get_bool('nether_aurelium_armor_alt') then

	armor:register_armor(":3d_armor:helmet_aurelium", {
		description = S("Aurelium Helmet"),
		inventory_image = "3d_armor_inv_helmet_aurelium.png",
		groups = {armor_head=1, armor_heal=15, armor_use=50, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_aurelium", {
		description = S("Aurelium Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_aurelium.png",
		groups = {armor_torso=1, armor_heal=24, physics_speed=1.5, armor_use=50, armor_fire=4},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_aurelium", {
		description = S("Aurelium Boots"),
		inventory_image = "3d_armor_inv_boots_aurelium.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=50, physics_gravity=.5},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
		armor:register_armor(":3d_armor:leggings_aurelium", {
		description = S("Aurelium Leggings"),
		inventory_image = "3d_armor_inv_leggings_aurelium.png",
		groups = {armor_legs=1, armor_heal=19, physics_jump=1.0, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	
	if minetest.get_modpath("shields") then
		armor:register_armor(":shields:shield_aurelium", {
		description = S("Aurelium Shield"),
		inventory_image = "shields_inv_shield_aurelium.png",
		groups = {armor_shield=1, armor_heal=20, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
		reciprocate_damage = true,
		--[[on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,]]
	})
	end
	
	   minetest.register_craft({
        output = "3d_armor:helmet_aurelium",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:chestplate_aurelium",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:leggings_aurelium",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:boots_aurelium",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"", "", ""},
        }
    })
    
        minetest.register_craft({
        output = "shields:shield_aurelium",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"", "nether:aurelium_ingot", ""},
        }
    })
    
    elseif minetest.settings:get_bool('nether_aurelium_armor_alt') then
    
    
	armor:register_armor(":3d_armor:helmet_aurelium_alt", {
		description = S("Aurelium Helmet"),
		inventory_image = "3d_armor_inv_helmet_aurelium_alt.png",
		groups = {armor_head=1, armor_heal=15, armor_use=50, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_aurelium_alt", {
		description = S("Aurelium Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_aurelium_alt.png",
		groups = {armor_torso=1, armor_heal=24, physics_speed=1.5, armor_use=50, armor_fire=4},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_aurelium_alt", {
		description = S("Aurelium Boots"),
		inventory_image = "3d_armor_inv_boots_aurelium_alt.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=50, physics_gravity=.5},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
		armor:register_armor(":3d_armor:leggings_aurelium_alt", {
		description = S("Aurelium Leggings"),
		inventory_image = "3d_armor_inv_leggings_aurelium_alt.png",
		groups = {armor_legs=1, armor_heal=19, physics_jump=1.0, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	
	if minetest.get_modpath("shields") then
		armor:register_armor(":shields:shield_aurelium_alt", {
		description = S("Aurelium Shield"),
		inventory_image = "shields_inv_shield_aurelium_alt.png",
		groups = {armor_shield=1, armor_heal=20, armor_use=50, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
		reciprocate_damage = true,
		--[[on_damage = function(player, index, stack)
			play_sound_effect(player, "default_glass_footstep")
		end,
		on_destroy = function(player, index, stack)
			play_sound_effect(player, "default_break_glass")
		end,]]
	})
	end
	
	   minetest.register_craft({
        output = "3d_armor:helmet_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:chestplate_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:leggings_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
        }
    })
    minetest.register_craft({
        output = "3d_armor:boots_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "", "nether:aurelium_ingot"},
            {"", "", ""},
        }
    })
    
        minetest.register_craft({
        output = "shields:shield_aurelium_alt",
        recipe = {
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"nether:aurelium_ingot", "nether:aurelium_ingot", "nether:aurelium_ingot"},
            {"", "nether:aurelium_ingot", ""},
        }
    })
    end
