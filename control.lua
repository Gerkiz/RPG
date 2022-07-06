require 'utils.data_stages'
_LIFECYCLE = _STAGE.control -- Control stage
local Event = require 'utils.event'
require 'utils.utils'
local RPG = require 'rpg.main'
require 'utils.player_modifiers'

Event.on_init(
    function()
        RPG.rpg_reset_all_players()
    end
)

RPG.disable_cooldowns_on_spells()

Event.on_nth_tick(
    60,
    function()
        if settings.global.comfy_enable_mod_gui.value then
            RPG.enable_mod_gui(true)
        else
            RPG.enable_mod_gui(false)
        end
        if settings.global.comfy_enable_health_and_mana_bars.value then
            RPG.enable_health_and_mana_bars(true)
        else
            RPG.enable_health_and_mana_bars(false)
        end
        if settings.global.comfy_enable_mana.value then
            RPG.enable_mana(true)
        else
            RPG.enable_mana(false)
        end
        if settings.global.comfy_enable_explosive_bullets.value then
            RPG.enable_explosive_bullets_globally(true)
        else
            RPG.enable_explosive_bullets_globally(false)
        end
        if settings.global.comfy_enable_stone_path.value then
            RPG.enable_stone_path(true)
        else
            RPG.enable_stone_path(false)
        end

        if settings.global.comfy_personal_tax_rate.value then
            local value = settings.global.comfy_personal_tax_rate.value
            RPG.personal_tax_rate(value)
        else
            RPG.personal_tax_rate(0.3)
        end
        if settings.global.comfy_enable_debug.value then
            RPG.toggle_debug(true)
        else
            RPG.toggle_debug(false)
        end
    end
)
