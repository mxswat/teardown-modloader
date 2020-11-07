#include "mods/modloader.lua"

GHooks = {}
GHooks.uiTick = {}

function addHookUiTick(fnc) 
    table.insert(GHooks.uiTick, fnc)
end

function getUiTickHooksCount()
    return table.getn(GHooks.uiTick)
end

function getUiHooks() 
    return GHooks.uiTick
end