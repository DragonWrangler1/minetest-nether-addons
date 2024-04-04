if minetest.get_modpath("throwable_bombs") then

minetest.register_craftitem(":nether:safety", {
	wield_scale = {x=2.5,y=2.5,z=1.0},
	inventory_image = "",
})
local nether_ignition = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.15, y=0.15},
	textures = {":nether:safety"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
nether_ignition.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)
	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
		self.object:remove()
			minetest.sound_play("", {pos = self.lastpos, gain = 0.8})
			end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end



minetest.register_entity(":nether:safety", nether_ignition)

local boom = {
	name = ":nether:explosion",
	--description = "DuN mInD mEh...",
	radius = 12,
	tiles = {
		side = "invisible.png",
		top = "invisible.png",
		bottom = "invisible.png",
		burning = "invisible.png"
	},
}
	local gtimer = 0
minetest.register_craftitem(":nether:bomb_2", {
	stack_max= 1,
	wield_scale = {x=1.1,y=1.1,z=1.05},
		description = "" ..core.colorize("#f30500","Nether TNT Stick\n") ..core.colorize("#ffffff", "Right-click first then, Left click to throw\n"),
	range = 0,
	inventory_image = "nether_tnt_tnt.png",
	on_secondary_use = function(itemstack, user, pointed_thing)

		gtimer = 0
		itemstack = "nether:bomb_engaged"
local pos = user:get_pos()
pos.y = pos.y + 1.5
local pinEnt = minetest.add_entity(pos, "nether:safety")
if pinEnt then
local dir = user:get_look_dir()
local yaw = user:get_look_yaw()
local svertical = user:get_look_vertical()
pinEnt:setvelocity({x=dir.x * -10, y=dir.y * -10, z=dir.z * -10})
pinEnt:setacceleration({x=dir.x * -5, y= -10, z=dir.z * -5})
pinEnt:set_rotation({x=0,y=yaw + math.pi,z=-svertical})
end
	 return itemstack end,
})


minetest.register_craftitem(":nether:bomb_engaged", {
	stack_max= 1,
	wield_scale = {x=1.1,y=1.1,z=1.05},
	description = "HURRY UP AND THROW IT",
	range = 0,
	inventory_image = "nether_tnt_tnt.png",
	groups = {not_in_creative_inventory = 1},

	on_use = function(itemstack, user, pointed_thing)
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "nether:bomb_engage")
			if obj then
				obj:set_velocity({x=dir.x * 18, y=dir.y * 18, z=dir.z * 18})
				obj:set_acceleration({x=0, y=-6, z=0})
				obj:set_yaw(yaw + math.pi)
				btimer = gtimer
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
			itemstack = ""
				end
			end
		end
		return itemstack
	end,
})

tnt.register_tnt(boom)


minetest.register_globalstep(function(dtime, player, pos)
	gtimer = gtimer + dtime;
	if gtimer >= 3.0 then
	for _, player in pairs(minetest.get_connected_players()) do
	local pos = player:get_pos()
		if player:get_wielded_item():get_name() == "nether:bomb_engaged" then
		player:set_wielded_item("")
		gtimer = 0
		tnt.boom(pos, boom)
		end end end end)

local nether_bomb = {
	physical = true,
	btimer = 0,
	timer = 0,
	hp_max = 420,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5},
	textures = {"nether_tnt_tnt.png"},
	lastpos= {},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
}
nether_bomb.on_step = function(self, dtime, pos)
	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)
	local btimer = btimer or 0
	self.timer = self.timer + dtime
	if self.timer > (3.0 - btimer) then
	tnt.boom(pos, boom)
	self.object:remove()
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}

end



minetest.register_entity(":nether:bomb_engage", nether_bomb)


end
