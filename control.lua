local Event = require 'utils.event'
local RPG_Settings = require 'rpg.table'
local RPG = require 'rpg.functions'

Event.on_init(
    function()
        RPG.rpg_reset_all_players()
    end
)

Event.on_nth_tick(
    60,
    function()
        if settings.global.comfy_enable_health_and_mana_bars.value then
            RPG_Settings.enable_health_and_mana_bars(true)
        else
            RPG_Settings.enable_health_and_mana_bars(false)
        end
        if settings.global.comfy_enable_mana.value then
            RPG_Settings.enable_mana(true)
        else
            RPG_Settings.enable_mana(false)
        end
        if settings.global.comfy_enable_explosive_bullets.value then
            RPG_Settings.enable_explosive_bullets_globally(true)
        else
            RPG_Settings.enable_explosive_bullets_globally(false)
        end
        if settings.global.comfy_enable_flame_boots.value then
            RPG_Settings.enable_flame_boots(true)
        else
            RPG_Settings.enable_flame_boots(false)
        end
        if settings.global.comfy_enable_stone_path.value then
            RPG_Settings.enable_stone_path(true)
        else
            RPG_Settings.enable_stone_path(false)
        end
        if settings.global.comfy_enable_one_punch_globally.value then
            RPG_Settings.enable_one_punch_globally(true)
        else
            RPG_Settings.enable_one_punch_globally(false)
        end

        if settings.global.comfy_disable_spell_cooldown.value then
            RPG_Settings.disable_cooldowns_on_spells()
        else
            RPG_Settings.rebuild_spells()
        end
        if settings.global.comfy_personal_tax_rate.value then
            local value = settings.global.comfy_personal_tax_rate.value
            RPG_Settings.personal_tax_rate(value)
        else
            RPG_Settings.personal_tax_rate(0.3)
        end
        if settings.global.comfy_enable_debug.value then
            RPG_Settings.toggle_debug()
        else
            RPG_Settings.toggle_debug()
        end
    end
)

require 'rpg.main'
