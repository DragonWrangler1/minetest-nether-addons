local S = minetest.get_translator(minetest.get_current_modname())

local function aurelium(pos, playsound)

	local lava_particlespawn_def = {
		amount = 6,
		time = 0.1,
		minpos = {x=pos.x - 1.5, y=pos.y + 0.3, z=pos.z - 1.5},
		maxpos = {x=pos.x + 1.5, y=pos.y + 0.5, z=pos.z + 1.5},
		minvel = {x = -1.5, y = 1.5, z = -1.5},
		maxvel = {x =  1.5, y = 5,   z =  1.5},
		minacc = {x = 1, y = 3, z = 1},
		maxacc = {x = -1, y = 10, z = -1},
		minexptime = 1,
		maxexptime = 2,
		minsize = .2,
		maxsize = .8,
		texture = "^[colorize:#000C5A:255",
		glow = 8
	}
	minetest.add_particlespawner(lava_particlespawn_def)
	lava_particlespawn_def.texture = "^[colorize:#000C45:255"
	lava_particlespawn_def.maxvel.y = 3
	lava_particlespawn_def.glow = 12
	minetest.add_particlespawner(lava_particlespawn_def)
	
	minetest.set_node(pos, {name = "air"})

	if math.random(1, 3) == 1 and minetest.registered_nodes["nether:aurelium_cover"] ~= nil then
		-- occasionally brief flames will be seen when breaking lava crust
		local posAbove = {x = pos.x, y = pos.y + 1, z = pos.z}
		if minetest.get_node(posAbove).name == "air" then
			minetest.set_node--[[(posAbove, {name = "nether:aurelium_fire"})]](posAbove, {name = "air"})
			minetest.get_node_timer(posAbove):set(math.random(7, 15) / 10, 0)
			--[[ commented out because the flame sound plays for too long
			if minetest.global_exists("fire") and fire.update_player_sound ~= nil then
				-- The fire mod only updates its sound every 3 seconds, these flames will be
				-- out by then, so start the sound immediately
				local players = minetest.get_connected_players()
				for n = 1, #players do fire.update_player_sound(players[n]) end
			end]]
		end
	end

	if playsound then
		minetest.sound_play(
			"nether_lava_bubble",
			-- this sample was encoded at 3x speed to reduce .ogg file size
			-- at the expense of higher frequencies, so pitch it down ~3x
			{pos = pos, pitch = 0.3, max_hear_distance = 8, gain = 0.4}
		)
	end
end

minetest.register_node(":nether:nether_block", {
	description = S("Nether Block"),
	tiles = {"nether_nether_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node(":nether:aurelium_block", {
	description = S("Aurelium Block"),
	tiles = {"aurelium_block.png"},
	is_ground_content = false,
	paramtype = "light",
	light_source = 12,
	groups = {cracky = 2},
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
	groups = {cracky = 1, level = 2},
	on_blast = function()  end,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":nether:aurelium_cover", {
	description = S("Aurelium Cover"),
	tiles = {
		"aurelium_cover.png"
	},
	drawtype = "nodebox",
	drop = "",
	paramtype = "light",
	--paramtype2 = "facedir",
	light_source = 12,
	node_box = {
            type = "fixed",
            fixed = {
              --  { -0.5, -0.5, (0.5 - 1 / 16), 0.5, 0.5, 0.5 }, 
              { -0.5, -0.5, 0.5, 0.5, -0.45, -0.5 }, 
            }
        },
	is_ground_content = true,
	groups = {snappy = 3, oddly_breakable_by_hand = 3},
	after_destruct = function(pos, oldnode)
		aurelium(pos, true)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
	end,
	on_blast = function(pos, intensity)
		aurelium(pos, false)
	end,
	sounds = default.node_sound_stone_defaults(),
})

--[[minetest.register_node(":nether:aurelium_fire", {
	description = S("Aurelium Fire"),
	drawtype = "firelike",
	tiles = {{
		name = "aurelium_fire_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1
		}}
	},
	inventory_image = "aurelium_fire.png",
	paramtype = "light",
	light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	floodable = true,
	damage_per_second = 4,
	groups = {igniter = 2, dig_immediate = 3, fire = 1},
	drop = "",
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(5)
	end,

	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name = 'air'})
		return true
	end
})]]

