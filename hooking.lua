#include "mods/modloader.lua"

GHooks = {}

function addHook(file, fname, fnc) 
    local functionHookName = "mod_"..file.."_"..fname
    if not GHooks[functionHookName] then
        GHooks[functionHookName] = {}
    end
    table.insert(GHooks[functionHookName], fnc)
end