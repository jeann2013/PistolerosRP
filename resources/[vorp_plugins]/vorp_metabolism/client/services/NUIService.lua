NUIService = {}

NUIService.UpdateHUD = function ()
    local thirst = tonumber(UserStatus["Thirst"]) / 1000
    local hunger = tonumber(UserStatus["Hunger"]) / 1000

    SendNUIMessage({action= "update", water= thirst, food= hunger})
end

---@param show boolean
NUIService.ShowHUD = function (show)
    if show then
        SendNUIMessage({action= "show"})
    else
        SendNUIMessage({action= "hide"})
    end
end