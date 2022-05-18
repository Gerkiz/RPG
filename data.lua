local function define_sprite(name, position, filename, size)
    local sprite = {
        type = 'sprite',
        name = name,
        filename = filename,
        position = position,
        size = size,
        flags = {'icon'}
    }
    return sprite
end

local settings_white_icon = '__RPG__/utils/files/settings-white.png'
local settings_black_icon = '__RPG__/utils/files/settings-black.png'
local pin_white_icon = '__RPG__/utils/files/pin-white.png'
local pin_black_icon = '__RPG__/utils/files/pin-black.png'
local infinite_icon = '__RPG__/utils/files/infinity.png'
local arrow_up_icon = '__RPG__/utils/files/arrow-up.png'
local arrow_down_icon = '__RPG__/utils/files/arrow-down.png'
local info_icon = '__RPG__/utils/files/info.png'

data:extend {
    define_sprite('rpg_settings_white_icon', {0, 0}, settings_white_icon, 32),
    define_sprite('rpg_settings_black_icon', {0, 0}, settings_black_icon, 32),
    define_sprite('rpg_pin_white_icon', {0, 0}, pin_white_icon, 32),
    define_sprite('rpg_pin_black_icon', {0, 0}, pin_black_icon, 31),
    define_sprite('rpg_infinite_icon', {0, 0}, infinite_icon, 32),
    define_sprite('rpg_arrow_up_icon', {0, 0}, arrow_up_icon, 16),
    define_sprite('rpg_arrow_down_icon', {0, 0}, arrow_down_icon, 16),
    define_sprite('rpg_info_icon', {0, 0}, info_icon, 32)
}
