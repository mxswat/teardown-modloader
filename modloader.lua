#include "mods/modlist.lua"
#include "mods/hooking.lua" --Nexus Injector

function exec_post_hook(functionHookName, ...)
    if GHooks[functionHookName] then 
        for idx, hookedFunction in pairs(GHooks[functionHookName]) do
            hookedFunction(...)
        end
    end
end
