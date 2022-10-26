MetabolismThreadService = {}

MetabolismThreadService.MetabolismTimers = function()
    if not Loaded then
        return
    end

    Wait(3000)
    local playerPed = PlayerPedId()
    local isDead = IsPlayerDead(playerPed)

    if tonumber(UserStatus["Thirst"]) <= 0 and not isDead then
        local newHealth = GetEntityHealth(playerPed) - 20
        if newHealth < 1 then
            Citizen.InvokeNative(0x697157CED63F18D4, playerPed, 500000, false, true, true)
        end
        SetEntityHealth(playerPed, newHealth, 0)
    end

    if tonumber(UserStatus["Hunger"]) <= 0 and not isDead then
        local newHealth = GetEntityHealth(playerPed) - 20
        if newHealth < 1 then
            Citizen.InvokeNative(0x697157CED63F18D4, playerPed, 500000, false, true, true)
        end
        SetEntityHealth(playerPed, newHealth, 0)
    end

    NUIService.UpdateHUD()
end

MetabolismThreadService.MetabolismUpdaters = function()
    if not Loaded then
        return
    end

    Wait(tonumber(Config.EveryTimeStatusDown))
    local playerPed = PlayerPedId()
    local isDead = IsPlayerDead(playerPed)

    if tonumber(UserStatus["Thirst"]) > 0 and tonumber(UserStatus["Hunger"]) > 0 and not isDead then
        if IsPedRunning(playerPed) then
            UserStatus["Thirst"] = tonumber(UserStatus["Thirst"]) - tonumber(Config.HowAmountThirstWhileRunning)
            UserStatus["Hunger"] = tonumber(UserStatus["Hunger"]) - tonumber(Config.HowAmountHungerWhileRunning)
        else
            UserStatus["Thirst"] = tonumber(UserStatus["Thirst"]) - tonumber(Config.HowAmountThirst)
            UserStatus["Hunger"] = tonumber(UserStatus["Hunger"]) - tonumber(Config.HowAmountHunger)
        end
        UserStatus["Thirst"] = UserStatus["Thirst"] < 0 and 0 or UserStatus["Thirst"]
        UserStatus["Hunger"] = UserStatus["Hunger"] < 0 and 0 or UserStatus["Hunger"]
    end

    if tonumber(UserStatus["Metabolism"]) > -1000 and tonumber(UserStatus["Metabolism"]) < 1000 then
        if IsPedRunning(playerPed) then
            UserStatus["Metabolism"] = tonumber(UserStatus["Metabolism"]) - tonumber(Config.HowAmountMetabolismWhileRunning)
        else
            UserStatus["Metabolism"] = tonumber(UserStatus["Metabolism"]) - tonumber(Config.HowAmountMetabolism)
        end
    end
end

MetabolismThreadService.MetabolismSaveDB = function()
    if not Loaded then
        return
    end

    Wait(60000)
    TriggerServerEvent("vorpmetabolism:SaveLastStatus", json.encode(UserStatus))
end

MetabolismThreadService.RadarControlHud = function()
    if not Loaded then
        return
    end

    Wait(1000)
    
    if IsRadarHidden() or IsPauseMenuActive() or not APIShowOn or NetworkIsInSpectatorMode() or IsHudHidden() then
        NUIService.ShowHUD(false)
    else
        NUIService.ShowHUD(true)
    end
end

MetabolismThreadService.MetabolismSet = function()
    if not Loaded or not MetabolismActive then
        return
    end

    Wait(10000)
    local playerPed = PlayerPedId()
    local metabolism = tonumber(UserStatus["Metabolism"]) / 1000

    Utils.Switch(metabolism):caseof{
        [10] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[21])
        end,
        [9] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[20])
        end,
        [8] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[19])
        end,
        [7] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[18])
        end,
        [6] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[17])
        end,
        [5] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[16])
        end,
        [4] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[15])
        end,
        [3] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[14])
        end,
        [2] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[13])
        end,
        [1] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[12])
        end,
        [0] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[11])
        end,
        [-1] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[10])
        end,
        [-2] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[9])
        end,
        [-3] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[8])
        end,
        [-4] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[7])
        end,
        [-5] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[6])
        end,
        [-6] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[5])
        end,
        [-7] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[4])
        end,
        [-8] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[3])
        end,
        [-9] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[2])
        end,
        [-10] = function(x)
            Citizen.InvokeNative(0x1902C4CFCC5BE57C, playerPed, Utils.WAIST_TYPES[1])
        end
      }
      Citizen.InvokeNative(0xCC8CA3E88256E58F, playerPed, 0, 1, 1, 1, false)
      Wait(300000)
end