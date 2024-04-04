if minetest.settings:get_bool('nether_lava_crust_cooling', true) then

local lava_nodes = {
	["nether:cooling_lava_source"] = "nether:cooling_lava_crust",
	["nether:lava_flowing_2"] = "nether:cooling_lava_crust_2",
	--["nether:lava_crust"] = "nether:cooling_lava_crust",
}
minetest.register_abm({
	label = "Lava Cooling 2",
	nodenames = {"nether:cooling_lava_source", "nether:cooling_lava_crust", "nether:cooling_lava_crust", "nether:lava_flowing_2", "nether:lava_crust"},
	neighbors = {"air"},
	interval = 2,
	chance = 2,
	catch_up = false,
	action = function(pos, node)
		node.name = lava_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

	local lava_cooling_nodes = {
	["nether:lava_crust"] = "nether:cooling_lava_crust",
	["nether_addons:lava_crust"] = "nether:cooling_lava_source",
}
minetest.register_abm({
	label = "Lava Cooling 3",
	nodenames = {"nether:cooling_lava_source", "nether_addons:lava_crust", "nether:lava_crust"},
	neighbors = {"air"},
	interval = 3,
	chance = 4,
	catch_up = false,
	action = function(pos, node)
		node.name = lava_cooling_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

end
--For Refreshing the Beacon

if minetest.get_modpath("beacons") then

	local beacon = {
	["beacons:base_magenta"] = "beacons:base_magenta",
	["nether:fumarole_slab"] = "nether:fumarole_slab",
	["nether:fumarole"] = "nether:fumarole",
}
minetest.register_abm({
	label = "beacon and fumerole refresh",
	nodenames = {"beacons:base_magenta", "nether:fumarole_slab", "nether:fumarole"},
	neighbors = {"air"},
	interval = 3,
	chance = 4,
	catch_up = false,
	action = function(pos, node)
		node.name = beacon[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

end

if minetest.settings:get_bool('nether_lava_particle_spawner') then

local lava_texture = function(lava_pos_2)
minetest.add_particlespawner({
		amount = 6,
		time = 0.1,
		minpos = {x=lava_pos_2.x-5, y=lava_pos_2.y-0.5, z=lava_pos_2.z-5},
		maxpos = {x=lava_pos_2.x+5, y=lava_pos_2.y+0.5, z=lava_pos_2.z+5},
		minvel = {x = -.5, y = 4.5, z = -.5},
		maxvel = {x =  .5, y = 7,   z =  .5},
		minacc = {x = 0, y = -10, z = 0},
		maxacc = {x = 0, y = -10, z = 0},
		minexptime = 1.4,
		maxexptime = 1.4,
		minsize = .2,
		maxsize = .8,
		texpool = {"^[colorize:#A00:255", "^[colorize:#A50:255"},
		glow = 8,
		collisiondetection = true,
		collision_removal = true,
		vertical = false,
	})
	minetest.sound_play({name="nether_lava_bubble"}, {
		pos = lava_pos_2,
		pitch = 0.3,
		gain = 0.4,
		max_hear_distance = 3,
	})
end

minetest.register_abm({
	label = "lava crust popping",
	nodenames = {"nether:cooling_lava_crust", "nether:lava_crust", "nether_addons:lava_crust"},
	neighbors = {"air"},
	interval = 4,
	chance = 50,
	catch_up = false,
	action = function(pos)
		local air_pos = minetest.find_node_near(pos, 1, "air")
		if air_pos then
			lava_texture(air_pos)
		end
	end,
})

end

if minetest.settings:get_bool('nether_lava_cooling_reverse_effect') then

local lava_reverse_nodes = {
	["nether:cooling_lava_source"] = "nether_addons:lava_crust",
	["nether:lava_flowing_2"] = "air",
	["nether:cooling_lava_crust_2"] = "air",
	["nether:cooling_lava_crust"] = "nether_addons:lava_crust",
}

minetest.register_abm({
	label = "Lava Cooling Reverse",
	nodenames = {"nether:cooling_lava_source", "air", "nether:lava_flowing_2", "nether_addons:lava_crust", "nether:cooling_lava_crust", "nether:cooling_lava_crust_2"},
	neighbors = {"air"},
	interval = 2,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		node.name = lava_reverse_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

end

local aurelium_nodes = {
	["nether:aurelium_water_source"] = "nether:aurelium_cover",
	["nether:aurelium_water_flowing"] = "nether:aurelium_cover",
--	["nether:cooling_lava_crust_2"] = "air",
--	["nether:cooling_lava_crust"] = "nether_addons:lava_crust",
}

minetest.register_abm({
	label = "Aurelium Evaporation",
	nodenames = {"nether:aurelium_water_source", "nether:aurelium_cover", "nether:aurelium_water_flowing"},
	neighbors = {"air"},
	interval = 4,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		node.name = aurelium_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

local big_aurelium_crystal_nodes = {
	["nether:big_aurelium_crystal"] = "nether:aurelium_water_source",
	["nether:big_aurelium_crystal_30"] = "nether:aurelium_water_source",
	["nether:big_aurelium_crystal_30_45"] = "nether:aurelium_water_source",
	["nether:big_aurelium_crystal_90"] = "nether:aurelium_water_source",
	["nether:big_aurelium_crystal_90_45"] = "nether:aurelium_water_source",

}

minetest.register_abm({
	label = "Aurelium Evaporation",
	nodenames = {"nether:aurelium_water_source", "nether:big_aurelium_crystal", "nether:big_aurelium_crystal_30", "nether:big_aurelium_crystal_30_45", "nether:big_aurelium_crystal_90", "nether:big_aurelium_crystal_90_45"},
	neighbors = {"default:lava_source"},
	interval = 3,
	chance = 2,
	catch_up = false,
	action = function(pos, node)
		node.name = big_aurelium_crystal_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

local med_aurelium_crystal_nodes = {
	["nether:med_aurelium_crystal"] = "nether:aurelium_water_source",
	["nether:med_aurelium_crystal_30"] = "nether:aurelium_water_source",
	["nether:med_aurelium_crystal_30_45"] = "nether:aurelium_water_source",
	["nether:med_aurelium_crystal_90"] = "nether:aurelium_water_source",
	["nether:med_aurelium_crystal_90_45"] = "nether:aurelium_water_source",
}

minetest.register_abm({
	label = "Aurelium Evaporation 2",
	nodenames = {"nether:aurelium_water_source", "nether:med_aurelium_crystal", "nether:med_aurelium_crystal_30", "nether:med_aurelium_crystal_30_45", "nether:med_aurelium_crystal_90", "nether:med_aurelium_crystal_90_45"},
	neighbors = {"default:lava_source"},
	interval = 3,
	chance = 4,
	catch_up = false,
	action = function(pos, node)
		node.name = med_aurelium_crystal_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	label = "Aurelium Water and Lava Conversion",
	nodenames = {"default:water_source", "nether:big_aurelium_crystal", "nether:med_aurelium_crystal", "nether:small_aurelium_crystal"},
	neighbors = {"default:lava_flowing",},
	interval = 2,
	chance = 1,
	catch_up = false,
	action = function (pos, node)
	
	--if math.random(1, 3) == 1 and minetest.registered_nodes["nether:big_aurelium_crystal"] ~= nil then
		-- occasionally brief flames will be seen when breaking lava crust
		local posAbove = {x = pos.x, y = pos.y + 1, z = pos.z}
		local posBelow = {x = pos.x, y = pos.y - 1, z = pos.z}
		if minetest.get_node(posAbove).name == "default:lava_flowing" and minetest.get_node(posBelow).name == "air" then
			minetest.set_node(posBelow, {name = "default:water_source"})
			minetest.get_node_timer(posAbove):set(math.random(7, 15) / 10, 0)
		
		
			--[[ commented out because the flame sound plays for too long
			if minetest.global_exists("fire") and fire.update_player_sound ~= nil then
				-- The fire mod only updates its sound every 3 seconds, these flames will be
				-- out by then, so start the sound immediately
				local players = minetest.get_connected_players()
				for n = 1, #players do fire.update_player_sound(players[n]) end
			end]]
		--end
	end
end
})

minetest.register_abm({
	label = "Aurelium Water and Lava Conversion",
	nodenames = {"default:water_source", "nether:big_aurelium_crystal", "air", "nether:med_aurelium_crystal", "nether:small_aurelium_crystal"},
	neighbors = {"default:lava_flowing", "air"},
	interval = 2,
	chance = 2,
	catch_up = false,
	action = function (pos, node)
	
	--if math.random(1, 3) == 1 and minetest.registered_nodes["nether:big_aurelium_crystal"] ~= nil then
		-- occasionally brief flames will be seen when breaking lava crust
		local posAbove = {x = pos.x, y = pos.y + 1, z = pos.z}
		local posBelow = {x = pos.x, y = pos.y - 1, z = pos.z}
		if minetest.get_node(posAbove).name == "air" and minetest.get_node(posBelow).name == "default:water_source" then
			minetest.set_node(posBelow, {name = "air"})
			minetest.get_node_timer(posAbove):set(math.random(7, 15) / 10, 0)
		
		
			--[[ commented out because the flame sound plays for too long
			if minetest.global_exists("fire") and fire.update_player_sound ~= nil then
				-- The fire mod only updates its sound every 3 seconds, these flames will be
				-- out by then, so start the sound immediately
				local players = minetest.get_connected_players()
				for n = 1, #players do fire.update_player_sound(players[n]) end
			end]]
		--end
	end
end
})

local small_aurelium_crystal_nodes = {
	["nether:small_aurelium_crystal"] = "nether:aurelium_water_source",
	["nether:small_aurelium_crystal_30"] = "nether:aurelium_water_source",
	["nether:small_aurelium_crystal_30_45"] = "nether:aurelium_water_source",
	["nether:small_aurelium_crystal_90"] = "nether:aurelium_water_source",
	["nether:small_aurelium_crystal_90_45"] = "nether:aurelium_water_source",
}

minetest.register_abm({
	label = "Aurelium Evaporation",
	nodenames = {"nether:aurelium_water_source", "nether:small_aurelium_crystal", "nether:small_aurelium_crystal_30", "nether:small_aurelium_crystal_30_45", "nether:small_aurelium_crystal_90", "nether:small_aurelium_crystal_90_45"},
	neighbors = {"default:lava_source"},
	interval = 3,
	chance = 8,
	catch_up = false,
	action = function(pos, node)
		node.name = small_aurelium_crystal_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

local small_aurelium_crystal_nodes = {
	["nether:aurelium_cover"] = "air",
}

minetest.register_abm({
	label = "Aurelium Evaporation",
	nodenames = {"nether:aurelium_cover", "air"},
	neighbors = {"air"},
	interval = 3,
	chance = 8,
	catch_up = false,
	action = function(pos, node)
		node.name = small_aurelium_crystal_nodes[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})
