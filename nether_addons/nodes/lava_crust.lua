local S = minetest.get_translator(minetest.get_current_modname())

local function smash_lava_crust(pos, playsound)

	local lava_particlespawn_def = {
		amount = 6,
		time = 0.1,
		minpos = {x=pos.x - 0.5, y=pos.y + 0.3, z=pos.z - 0.5},
		maxpos = {x=pos.x + 0.5, y=pos.y + 0.5, z=pos.z + 0.5},
		minvel = {x = -1.5, y = 1.5, z = -1.5},
		maxvel = {x =  1.5, y = 5,   z =  1.5},
		minacc = {x = 0, y = -10, z = 0},
		maxacc = {x = 0, y = -10, z = 0},
		minexptime = 1,
		maxexptime = 1,
		minsize = .2,
		maxsize = .8,
		texture = "^[colorize:#A00:255",
		glow = 8
	}
	minetest.add_particlespawner(lava_particlespawn_def)
	lava_particlespawn_def.texture = "^[colorize:#FB0:255"
	lava_particlespawn_def.maxvel.y = 3
	lava_particlespawn_def.glow = 12
	minetest.add_particlespawner(lava_particlespawn_def)

	minetest.set_node(pos, {name = "nether:cooling_lava_source"})

	if math.random(1, 3) == 1 and minetest.registered_nodes["fire:basic_flame"] ~= nil then
		-- occasionally brief flames will be seen when breaking lava crust
		local posAbove = {x = pos.x, y = pos.y + 1, z = pos.z}
		if minetest.get_node(posAbove).name == "air" then
			minetest.set_node(posAbove, {name = "fire:basic_flame"})
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

--================--
--===Lava Crust===--
--================--

minetest.register_node(":nether:cooling_lava_source", {
	description = S("Cooling Lava Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "nether_lava_crust_animated_2.png",
			backface_culling = false,
			tileable_vertical=true,
			tileable_horizontal=true,
			align_style="world",
			scale=2,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.8,
			},
		},
		{
			name = "nether_lava_crust_animated_2.png",
			backface_culling = true,
			tileable_vertical=true,
			tileable_horizontal=true,
			align_style="world",
			scale=2,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.8,
			},
		},
	},
	inventory_image = minetest.inventorycube(
		"nether_lava_crust_animated_2.png^[sheet:2x48:0,0",
		"nether_lava_crust_animated_2.png^[sheet:2x48:0,1",
		"nether_lava_crust_animated_2.png^[sheet:2x48:1,1"
	),
	paramtype = "light",
	light_source = default.LIGHT_MAX - 5,
	--walkable = false,
	pointable = true,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "nether:lava_flowing_2",
	liquid_alternative_source = "nether:cooling_lava_source",
	liquid_viscosity = 15,
	liquid_renewable = false,
	damage_per_second = 4,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node(":nether:cooling_lava_crust", {
	description = S("Cooling Lava Crust"),
	tiles = {
		{
			name="nether_lava_crust_animated_2.png",
			backface_culling=true,
			tileable_vertical=true,
			tileable_horizontal=true,
			align_style="world",
			scale=2,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.8,
			},
		}
	},
	inventory_image = minetest.inventorycube(
		"nether_lava_crust_animated_2.png^[sheet:2x48:0,0",
		"nether_lava_crust_animated_2.png^[sheet:2x48:0,1",
		"nether_lava_crust_animated_2.png^[sheet:2x48:1,1"
	),
	collision_box = {
		type = "fixed",
		fixed = {
			-- Damage is calculated "starting 0.1 above feet
			-- and progressing upwards in 1 node intervals", so
			-- lower this node's collision box by more than 0.1
			-- to ensure damage will be taken when standing on
			-- the node.
			{-0.5, -0.5, -0.5, 0.5, 0.39, 0.5}
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			-- Keep the selection box matching the visual node,
			-- rather than the collision_box.
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
		},
	},

	after_destruct = function(pos, oldnode)
		smash_lava_crust(pos, true)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
	end,
	on_blast = function(pos, intensity)
		smash_lava_crust(pos, false)
	end,

	paramtype = "light",
	light_source = default.LIGHT_MAX - 3,
	buildable_to = false,
	walkable_to = true,
	is_ground_content = true,
	drop = {
		items = {{
			-- Allow SilkTouch-esque "pickaxes of preservation" to mine the lava crust intact, if PR #10141 gets merged.
			tools = {"this line will block early MT versions which don't respect the tool_groups restrictions"},
			tool_groups = {{"pickaxe", "preservation"}},
			items = {"nether:lava_crust"}
		}}
	},
	--liquid_viscosity = 7,
	damage_per_second = 2,
	groups = {oddly_breakable_by_hand = 3, cracky = 3, explody = 1, igniter = 1},
})

minetest.register_node(":nether:lava_crust_lamp_post", {
	description = "Lava Crust Lamp Post",
	paramtype2 = "facedir",
	paramtype = "light",
	drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
			},
		},
	light_source = default.LIGHT_MAX - 1,
	tiles = {
		"nether_brick_32x.png",
		"nether_brick_32x.png",
		{
			name = "nether_brick_1x8.png" .. "^nether_mese_post_light_side_dark.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.6,
			},
		},
		{
			name = "nether_brick_1x8.png" .. "^nether_mese_post_light_side_dark.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.6,
			},
		},
		{
			name = "nether_brick_1x8.png" ..  "^nether_mese_post_light_side.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				length = 1.6,
			},
		},
		{
			name = "nether_brick_1x8.png" ..  "^nether_mese_post_light_side.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 32,
				aspect_h = 32,
				scale=2,
				length = 1.6,
			},
		},
		},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

