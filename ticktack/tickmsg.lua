#include "mods/hooking.lua" --Nexus Injector

function tictack()
    -- SetString("hud.notification", "tic tack")
    -- Disabled this is just an example mod to showcase the ability to inject code into hud.lua
end

addHook("hud", "tick", tictack)