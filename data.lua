local function define_sprite(name, position, filename, size)
    local sprite = {
        type = 'sprite',
        name = name,
        filename = filename,
        position = position,
        size = size,
        flags = { 'icon' }
    }
    return sprite
end

local settings_white_icon = '__RPG__/graphics/icons/settings-white.png'
local settings_black_icon = '__RPG__/graphics/icons/settings-black.png'
local pin_white_icon = '__RPG__/graphics/icons/pin-white.png'
local pin_black_icon = '__RPG__/graphics/icons/pin-black.png'
local infinite_icon = '__RPG__/graphics/icons/infinity.png'
local arrow_up_icon = '__RPG__/graphics/icons/arrow-up.png'
local arrow_down_icon = '__RPG__/graphics/icons/arrow-down.png'
local tidal_icon = '__RPG__/graphics/icons/tidal.png'
local spew_icon = '__RPG__/graphics/icons/spew.png'
local berserk_icon = '__RPG__/graphics/icons/berserk.png'
local warp_icon = '__RPG__/graphics/icons/warp.png'
local x_icon = '__RPG__/graphics/icons/x.png'
local info_icon = '__RPG__/graphics/icons/info.png'

data:extend {
    define_sprite('rpg_settings_white_icon', { 0, 0 }, settings_white_icon, 32),
    define_sprite('rpg_settings_black_icon', { 0, 0 }, settings_black_icon, 32),
    define_sprite('rpg_pin_white_icon', { 0, 0 }, pin_white_icon, 32),
    define_sprite('rpg_pin_black_icon', { 0, 0 }, pin_black_icon, 31),
    define_sprite('rpg_infinite_icon', { 0, 0 }, infinite_icon, 32),
    define_sprite('rpg_arrow_up_icon', { 0, 0 }, arrow_up_icon, 16),
    define_sprite('rpg_arrow_down_icon', { 0, 0 }, arrow_down_icon, 16),
    define_sprite('rpg_info_icon', { 0, 0 }, info_icon, 32),
    define_sprite('rpg_tidal_icon', { 0, 0 }, tidal_icon, 32),
    define_sprite('rpg_x_icon', { 0, 0 }, x_icon, 32),
    define_sprite('rpg_warp_icon', { 0, 0 }, warp_icon, 32),
    define_sprite('rpg_berserk_icon', { 0, 0 }, berserk_icon, 32),
    define_sprite('rpg_spew_icon', { 0, 0 }, spew_icon, 32),
}


data:extend { {
    type = "custom-input",
    name = "ctrl-cast-spell",
    key_sequence = "CONTROL + E",
    action = "lua",
} }
