MetabolismService = {}

UserStatus = {}
Loaded = false;
MetabolismActive = false;
APIShowOn = true;

---@param enable boolean
MetabolismService.SetHUD = function(enable)
    APIShowOn = enable
end

---@param key string
---@param cb function
MetabolismService.GetValue = function(key, cb)
    key = Utils.StrCapitalize(key)

    if UserStatus[key] ~= nil then
        cb(tonumber(UserStatus[key]))
    else
        cb(nil)
    end
end

---@param key string
---@param value number
MetabolismService.ChangeValue = function(key, value)
    key = Utils.StrCapitalize(key)

    if UserStatus[key] ~= nil then
        local newValue = tonumber(UserStatus[key]) + value
        if key == "Metabolism" then
            newValue = newValue > 10000 and 10000 or newValue
            newValue = newValue < -10000 and -10000 or newValue
        else
            newValue = newValue > 1000 and 1000 or newValue
            newValue = newValue < 0 and 0 or newValue
        end
        UserStatus[key] = newValue
    end
end

---@param key string
---@param value number
MetabolismService.SetValue = function(key, value)
    key = Utils.StrCapitalize(key)

    if UserStatus[key] ~= nil then
        if key == "Metabolism" then
            value = value > 10000 and 10000 or value
            value = value < -10000 and -10000 or value
        else
            value = value > 1000 and 1000 or value
            value = value < -1000 and -1000 or value
        end
        UserStatus[key] = value
    end
end


---@param idx number
---@param label string
MetabolismService.ConsumeItem = function(idx, label)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)

    if tonumber(Config.ItemsToUse[idx]["Thirst"]) ~= 0 then
        local newThirst = UserStatus["Thirst"] + tonumber(Config.ItemsToUse[idx]["Thirst"])

        newThirst = newThirst > 1000 and 1000 or newThirst
        newThirst = newThirst < 0 and 0 or newThirst

        UserStatus["Thirst"] = newThirst
    end

    if tonumber(Config.ItemsToUse[idx]["Hunger"]) ~= 0 then
        local newHunger = UserStatus["Hunger"] + tonumber(Config.ItemsToUse[idx]["Hunger"])

        newHunger = newHunger > 1000 and 1000 or newHunger
        newHunger = newHunger < 0 and 0 or newHunger

        UserStatus["Hunger"] = newHunger
    end

    if tonumber(Config.ItemsToUse[idx]["Metabolism"]) ~= 0 then
        local newMetabolism = UserStatus["Metabolism"] + tonumber(Config.ItemsToUse[idx]["Metabolism"])

        newMetabolism = newMetabolism > 1000 and 1000 or newMetabolism
        newMetabolism = newMetabolism < 0 and 0 or newMetabolism

        UserStatus["Metabolism"] = newMetabolism
    end

    if tonumber(Config.ItemsToUse[idx]["Stamina"]) ~= 0 then
        local stamina = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
        local newStamina = stamina + tonumber(Config.ItemsToUse[idx]["Stamina"])

        newStamina = newStamina > 100 and 100 or newStamina

        UserStatus["Stamina"] = newStamina
    end

    if tonumber(Config.ItemsToUse[idx]["InnerCoreHealth"]) ~= 0 then
        local health = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 0)
        local newHealth = health + tonumber(Config.ItemsToUse[idx]["InnerCoreHealth"])

        newHealth = newHealth > 100 and 100 or newHealth

        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), newHealth)
    end

    if tonumber(Config.ItemsToUse[idx]["OuterCoreHealth"]) ~= 0 then
        local health = Citizen.InvokeNative(0x82368787EA73C0F7, PlayerPedId(), 0)
        local newHealth = health + tonumber(Config.ItemsToUse[idx]["OuterCoreHealth"])

        newHealth = newHealth > 150 and 150 or newHealth

        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), newHealth)
    end

    -- Golds
    if tonumber(Config.ItemsToUse[idx]["OuterCoreHealthGold"]) ~= 0 then
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, tonumber(Config.ItemsToUse[idx]["OuterCoreHealthGold"]), true)
    end

    if tonumber(Config.ItemsToUse[idx]["InnerCoreHealthGold"]) ~= 0 then
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, tonumber(Config.ItemsToUse[idx]["InnerCoreHealthGold"]), true)
    end

    if tonumber(Config.ItemsToUse[idx]["OuterCoreStaminaGold"]) ~= 0 then
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, tonumber(Config.ItemsToUse[idx]["OuterCoreStaminaGold"]), true)
    end

    if tonumber(Config.ItemsToUse[idx]["InnerCoreStaminaGold"]) ~= 0 then
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, tonumber(Config.ItemsToUse[idx]["InnerCoreStaminaGold"]), true)
    end

    -- Animations
    if tostring(Config.ItemsToUse[idx]["Animation"]):lower() == "eat" then
        Utils.PlayAnimEat(tostring(Config.ItemsToUse[idx]["PropName"]):lower())
    end

    if tostring(Config.ItemsToUse[idx]["Animation"]):lower() == "eat" then
        Utils.PlayAnimDrink(tostring(Config.ItemsToUse[idx]["PropName"]):lower())
    end

    TriggerEvent("vorp:Tip", _U("OnUseItem", label), 3000)
end

---@param status string
MetabolismService.StartFunctions = function (status)
    if #status < 2 then
        return
    end

    if UserStatus["Thirst"] ~= nil and UserStatus["Hunger"] ~= nil then
        Wait(1000)

        NUIService.UpdateHUD()
        Utils.CreateThread(MetabolismThreadService.MetabolismTimers)
        Utils.CreateThread(MetabolismThreadService.MetabolismUpdaters)
        Utils.CreateThread(MetabolismThreadService.MetabolismSaveDB)
        Utils.CreateThread(MetabolismThreadService.RadarControlHud)
        Utils.CreateThread(MetabolismThreadService.MetabolismSet)
    end
    Loaded = true
end

InventoryAPI.registerUsableItem = function(name, cb)
	UsableItemsFunctions[name] = cb
	if Config.Debug then
		Wait(9000) -- so it doesn't print everywhere in the console
		Log.print("Callback for item[^3" .. name .. "^7] ^2Registered!^7")
	end
end

function getThirst()
	return UserStatus["Thirst"]
end

function getHunger()
	return UserStatus["Hunger"]
end