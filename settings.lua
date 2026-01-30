data:extend {
    {
        type = 'bool-setting',
        name = 'comfy_enable_debug',
        setting_type = 'runtime-global',
        default_value = false
    },
    {
        type = 'bool-setting',
        name = 'comfy_enable_health_and_mana_bars',
        setting_type = 'runtime-global',
        default_value = true
    },
    {
        type = 'bool-setting',
        name = 'comfy_enable_explosive_bullets',
        setting_type = 'runtime-global',
        default_value = true
    },
    {
        type = 'bool-setting',
        name = 'comfy_enable_mana',
        setting_type = 'runtime-global',
        default_value = true
    },
    {
        type = 'bool-setting',
        name = 'comfy_enable_stone_path',
        setting_type = 'runtime-global',
        default_value = true
    },
    {
        type = 'double-setting',
        name = 'comfy_personal_tax_rate',
        setting_type = 'runtime-global',
        default_value = 0.3,
        minimum_value = 0,
        maximum_value = 0.9,
        allowed_values = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9}
    },
    {
        type = 'double-setting',
        name = 'comfy_level_limit',
        setting_type = 'startup',
        default_value = 4999,
        minimum_value = 100,
        maximum_value = 10000
    },
    {
        type = 'bool-setting',
        name = 'comfy_disable_cooldown',
        setting_type = 'startup',
        default_value = true
    },
    {
        type = 'bool-setting',
        name = 'rpg_mod_gui_top_frame',
        setting_type = 'runtime-global',
        default_value = true,
        order = 'a'
    }
}
