nether_sword_api = {
    mod = {
        ethereal = minetest.get_modpath('ethereal')
    },
    settings = {
        dragon_scale_sword =
            minetest.settings:get_bool('dragon_scale_sword', true)
    },
}

nether_sword_api.fired_table = {}
local enable_particles = minetest.settings:get_bool('enable_particles', true)

function nether_sword_api.within_limits(pos, radius)
    if (pos.x - radius) > -30913
    and (pos.x + radius) < 30928
    and (pos.y - radius) > -30913
    and (pos.y + radius) < 30928
    and (pos.z - radius) > -30913
    and (pos.z + radius) < 30928 then
        return true -- within limits
    end

    return false -- beyond limits
end

local function bound(x, minb, maxb)
    if x < minb then
        return minb
    elseif x > maxb then
        return maxb
    else
        return x
    end
end

-- remember how many bullets player fired i.e. {SaKeL: 1,...}
function nether_sword_api.sync_fired_table(owner)
    if nether_sword_api.fired_table[owner] ~= nil then
        if nether_sword_api.fired_table[owner] < 0 then
            nether_sword_api.fired_table[owner] = 0
        else
            nether_sword_api.fired_table[owner] = nether_sword_api.fired_table[owner] - 1
        end
    end
end

function nether_sword_api.fire_sword(itemstack, user, pointed_thing)
    if not user:get_player_control().RMB then return end

    local speed = 8
    local pos = user:get_pos()
    local v = user:get_look_dir()
    local player_name = user:get_player_name()

    if not nether_sword_api.fired_table[player_name] or nether_sword_api.fired_table[player_name] < 0 then
        nether_sword_api.fired_table[player_name] = 0
    end

    if nether_sword_api.fired_table[player_name] >= 5 then
        minetest.chat_send_player(player_name, 'You can shoot 5 shots at the time!')
        return itemstack
    end

    nether_sword_api.fired_table[player_name] = nether_sword_api.fired_table[player_name] + 1

    -- adjust position from where the bullet will be fired based on the look direction
    -- prevents hitting the node when looking/shooting down from the edge
    pos.x = pos.x + v.x
    pos.z = pos.z + v.z
    if v.y > 0.4 or v.y < -0.4 then
        pos.y = pos.y + v.y
    else
        pos.y = pos.y + 1
    end

    -- play shoot attack sound
    minetest.sound_play('nether_dragon_random', {
        pos = pos,
        gain = 1.0, -- default
        max_hear_distance = 10,
   })

    local obj = minetest.add_entity(pos, 'nether_sword_api:dragon_breath')

    if not obj then
        return
    end

    local ent = obj:get_luaentity()

    if ent then
        ent._owner = player_name

        v.x = v.x * speed
        v.y = v.y * speed
        v.z = v.z * speed

        obj:set_velocity(v)
    end

    -- wear tool
    local wdef = itemstack:get_definition()
    itemstack:add_wear(65535 / (1500 - 1))

    -- Tool break sound
    if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
        minetest.sound_play(wdef.sound.breaks, { pos = pointed_thing.above, gain = 0.5 })
    end

    return itemstack
end

minetest.register_entity(':nether_sword_api:dragon_breath', {
    physical = false,
    visual = 'sprite',
    visual_size = { x = 1, y = 1 },
    textures = { 'nether_dragon_fire.png' },
    collisionbox = { -0.25, -0.25, -0.25, 0.25, 0.25, 0.25 },
    _lifetime = 9, -- seconds before removing
    _timer = 0, -- initial value
    glow = 9,
    remove_on_collision = true,
    _owner = 'unknown', -- initial value
    _trigger_sd = 0,
    

 get_staticdata = function(self)
        self._trigger_sd = self._trigger_sd + 1

        -- staticdata are triggered before object appears and before it hides from the World,
        -- so remove it before it hides
        if self._trigger_sd % 2 == 0 then
            self.object:remove()
            nether_sword_api.sync_fired_table(self._owner)
        end

        -- insurance - makes sure staticdata are updated when objects activates again
        -- (because somehow wasn't removed yet)
        local table = {
            _owner = self._owner,
            _timer = self._timer
        }

        ---@diagnostic disable-next-line: redundant-return-value
        return minetest.serialize(table)
    end,

    -- when the entity gets punched
    on_punch = function(self, puncher, time_from_last_punch, tool_capabilities, dir, damage)
        if not tool_capabilities then
            return
        end

        local full_punch_interval = tool_capabilities.full_punch_interval or 1

        -- only on full punch
        if time_from_last_punch < full_punch_interval then
            return
        end

        local v = math.random(1, 8)
        local velocity = dir

        velocity.x = velocity.x * v
        velocity.y = velocity.y * v
        velocity.z = velocity.z * v
        self.object:set_velocity(velocity)
    end,

    on_step = function(self, dtime)
        local pos = self.object:getpos()
        local node = minetest.get_node_or_nil(pos)

        self._timer = self._timer + dtime

        if self._timer > self._lifetime or
             not nether_sword_api.within_limits(pos, 0) then
            self.object:remove()
            nether_sword_api.sync_fired_table(self._owner)
            return
        end

        -- hit node
        if node
            and minetest.registered_nodes[node.name]
            and minetest.registered_nodes[node.name].walkable
        then
            self.object:remove()
            nether_sword_api.sync_fired_table(self._owner)

            return
        end

        -- hit player or mob
        for k, obj in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
            if obj:is_player() then
                -- punch player
                obj:punch(self.object, 1.0, {
                    full_punch_interval = 1.0,
                    damage_groups = { fleshy = 14 },
                }, nil)

                self.object:remove()
                nether_sword_api.sync_fired_table(self._owner)

                break

            elseif not obj:is_player()
                and obj:get_luaentity()
                and obj:get_luaentity().name ~= '__builtin:item'
            then
                -- punch entity
                local entity = obj:get_luaentity()

                if entity.name ~= self.object:get_luaentity().name then
                    obj:punch(self.object, 1.0, {
                        full_punch_interval = 1.0,
                        damage_groups = { fleshy = 28 },
                    }, nil)

                    self.object:remove()
                    nether_sword_api.sync_fired_table(self._owner)
                    break
                end
            end
        end
    end
})

