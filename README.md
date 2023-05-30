## RPG

![RPG](https://raw.githubusercontent.com/Gerkiz/RPG/master/mod_pic/gui.png)

## RPG Settings

![RPGSETTINGS](https://raw.githubusercontent.com/Gerkiz/RPG/master/mod_pic/settings.png)

## Mod Settings

##### These settings can be changed ONLY at startup.

![MODSETTINGSRUNTIME](https://raw.githubusercontent.com/Gerkiz/RPG/master/mod_pic/mod_settings_1.png

##### These settings can be changed at any time by an admin.

![MODSETTINGSRUNTIME](https://raw.githubusercontent.com/Gerkiz/RPG/master/mod_pic/mod_settings_2.png)

## Spells

![SPELLS](https://raw.githubusercontent.com/Gerkiz/RPG/master/mod_pic/spells.png

## Remote Interface

The following remote interfaces exist for other developers to utilize:

- remote.call("RPG", "add_new_projectile", "projectile_name", projectile) -- create a new projectile
- remote.call("RPG", "add_new_spell", spell) -- create a new spell
- remote.call("RPG", "rpg_reset_player", "player_name") -- reset a player
- remote.call("RPG", "give_xp", 3000) -- give all players some xp
- remote.call("RPG", "gain_xp", "player_name", 3000) -- give a player some xp

## Projectiles

Adding new projectiles should be fairly simple.
Note, this cannot be used if `game` has been initialized.

By calling:

```
local projectile = { -- reference to the interface call
	name = 'cluster-grenade', -- the projectile to create
	count = 1, -- the amount of projectiles to spawn
	max_range = 32, -- the max range the projectile can travel
	tick_speed = 1, -- currently not used
}
remote.call("RPG", "add_new_projectile", "projectile_name", projectile) -- projectile_name is what you're gonna reference when wanting to create this projectile
```

## Spells

Adding new spells should be fairly simple.
Note, this cannot be used if `game` has been initialized.

By calling:

```
local spell = { -- reference to the interface call
	name = {'spells.drone_mine'}, -- localized text, reference this in your own mod
	entityName = 'stone-wall', -- the entity to spawn
	target = false, -- false if the spell should not hit anything
	force = 'player', -- in string, what force this entity should be
	level = 200, -- the level limit before a player can use it
	type = 'special', -- item/entity/special
	mana_cost = 1000, -- mana cost of the spell
	cooldown = 18000, -- cooldown for the spell. global cooldown must NOT be disabled, else use enforce_cooldown
	enabled = true, -- if the spell should be enabled or not (if players can use it)
	enforce_cooldown = true, -- if global cooldown is disabled, use this if you want to have a cooldown
	log_spell = true, -- currently does nothing
	sprite = 'virtual-signal/signal-info', -- the sprite when viewing the spell "book"
	special_sprite = 'virtual-signal=signal-info', -- if this is a special spell, this needs to be set
	tooltip = 'Creates a drone that mines entities around you. This is a WIP spell that might get disabled.', -- the tooltip, either localized or as string
	callback = function(data) -- the callback to what to actually do with the spell
		-- NOTE! the callback automatically includes: data and funcs, use them if you want.
		-- local data = { --- data consists of the following
		--     self = spell, -- self reference to the spell
		--     player = player, -- the player who is casting the spell
		--     damage_entity = damage_entity, -- the damage to be done if this is an entity
		--     position = position, -- the position to spawn this spell at
		--     surface = surface, -- the surface to spawn this spell at
		--     force = force, -- the spell force
		--     target_pos = target_pos, -- the target position to "hit"
		--     range = range, -- the range for spell
		--     tame_unit_effects = tame_unit_effects, -- unused
		--     rpg_t = rpg_t -- the global rpg table of the player
		-- }
		-- local funcs = {
		--     remove_mana = Public.remove_mana, -- reference to Functions.remove_mana, i.e remove mana from the player
		--     damage_player_over_time = Public.damage_player_over_time, -- if the spell should damage the player over time
		--     cast_spell = Public.cast_spell -- if the spell was cast or failed
		-- }

		local self = data.self -- spell reference
		local player = data.player -- player who is casting the spell
		Ai.create_char({player_index = player.index, command = 2, search_local = false}) -- do something

		Public.cast_spell(player) -- the spell was success, else call cast_spell(player, true)
		Public.remove_mana(player, self.mana_cost) -- remove mana from the player if the spell was casted successfully
		return true -- either return true or false if the spell was casted successfully
	end
}
remote.call("RPG", "add_new_spell", spell)
```

## Bugs

None? Let me know if you run into any issues.

## Information

This version of RPG is the one that will be always up to date. We run this module in our scenario that we host at Comfy.
