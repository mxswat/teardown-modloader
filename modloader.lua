#include "mods/modlist.lua"
#include "mods/hooking.lua" --Nexus Injector

-- This is called when you enter into a map.
function modloaderinit()
    -- call init function of your mod here
    SetString("hud.hintinfo", "Initialized with "..getUiTickHooksCount().." hooks")
end

-- This is called every frame.
function getUiHooks()
    for idx, fnc in pairs(getHooks()) do
        fnc()
    end
end
