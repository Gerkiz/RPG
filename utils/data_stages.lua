--luacheck: ignore
local branch_version = '1.1' -- define what game version we're using
local sub = string.sub

-- Non-applicable stages are commented out.
_STAGE = {
    --settings = 1,
    --data = 2,
    --migration = 3,
    control = 4,
    init = 5,
    load = 6,
    config_change = 7,
    runtime = 8
}

function get_game_version()
    local get_active_branch = sub(game.active_mods.base, 3, 4)
    local is_branch_experimental = sub(branch_version, 3, 4)
    if get_active_branch >= is_branch_experimental then
        return true
    else
        return false
    end
end

function is_loaded(module)
    local res = _G.package.loaded[module]
    if res then
        return res
    else
        return false
    end
end

function is_game_modded()
    if global.is_modded ~= nil then
        return global.is_modded
    end

    local i = 0
    local is_modded = false
    for _, _ in pairs(game.active_mods) do
        i = i + 1
        if i > 1 then
            is_modded = true
        end
    end
    if is_modded and not global.is_modded then
        global.is_modded = true
    end
    return is_modded
end

function is_mod_loaded(module)
    if not module then
        return false
    end

    local res = script.active_mods[module]
    if res then
        return true
    else
        return false
    end
end
