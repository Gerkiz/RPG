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
        allowed_values = { 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 }
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
        type = 'double-setting',
        name = 'rpg_points_per_level',
        setting_type = 'runtime-global',
        default_value = 5,
        minimum_value = 1,
        maximum_value = 50
    },
    {
        type = 'double-setting',
        name = 'rpg_xp_per_level_factor',
        setting_type = 'startup',
        default_value = 8,
        minimum_value = 1,
        maximum_value = 100
    },
    {
        type = 'bool-setting',
        name = 'rpg_mod_gui_top_frame',
        setting_type = 'runtime-global',
        default_value = true,
        order = 'a'
    },
    {
        type = 'double-setting',
        name = 'rpg_strength_inventory_slots',
        setting_type = 'runtime-global',
        default_value = 0.2,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-a'
    },
    {
        type = 'double-setting',
        name = 'rpg_strength_mining_speed',
        setting_type = 'runtime-global',
        default_value = 0.006,
        minimum_value = 0,
        maximum_value = 0.5,
        order = 'b-b'
    },
    {
        type = 'double-setting',
        name = 'rpg_strength_following_robots',
        setting_type = 'runtime-global',
        default_value = 0.015,
        minimum_value = 0,
        maximum_value = 0.5,
        order = 'b-c'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_distance_base',
        setting_type = 'runtime-global',
        default_value = 0.22,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-d'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_build_distance',
        setting_type = 'runtime-global',
        default_value = 0.12,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-e'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_item_drop_distance',
        setting_type = 'runtime-global',
        default_value = 0.05,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-f'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_reach_distance',
        setting_type = 'runtime-global',
        default_value = 0.12,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-g'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_loot_pickup_distance',
        setting_type = 'runtime-global',
        default_value = 0.12,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-h'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_item_pickup_distance',
        setting_type = 'runtime-global',
        default_value = 0.12,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-i'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_resource_reach_distance',
        setting_type = 'runtime-global',
        default_value = 0.05,
        minimum_value = 0,
        maximum_value = 5,
        order = 'b-j'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_distance_cap_long',
        setting_type = 'runtime-global',
        default_value = 60,
        minimum_value = 1,
        maximum_value = 200,
        order = 'b-k'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_distance_cap_short',
        setting_type = 'runtime-global',
        default_value = 20,
        minimum_value = 1,
        maximum_value = 100,
        order = 'b-l'
    },
    {
        type = 'double-setting',
        name = 'rpg_magic_mana_per_point',
        setting_type = 'runtime-global',
        default_value = 2,
        minimum_value = 0,
        maximum_value = 50,
        order = 'b-m'
    },
    {
        type = 'double-setting',
        name = 'rpg_dexterity_running_speed',
        setting_type = 'runtime-global',
        default_value = 0.001,
        minimum_value = 0,
        maximum_value = 0.5,
        order = 'b-n'
    },
    {
        type = 'double-setting',
        name = 'rpg_dexterity_crafting_speed',
        setting_type = 'runtime-global',
        default_value = 0.015,
        minimum_value = 0,
        maximum_value = 0.5,
        order = 'b-o'
    },
    {
        type = 'double-setting',
        name = 'rpg_vitality_health_bonus',
        setting_type = 'runtime-global',
        default_value = 6,
        minimum_value = 0,
        maximum_value = 50,
        order = 'b-p'
    }
}
