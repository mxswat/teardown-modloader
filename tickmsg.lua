#include "mods/hooking.lua" --Nexus Injector

function tictack()
    SetString("hud.notification", "tic tack")
end

addHookUiTick(tictack)