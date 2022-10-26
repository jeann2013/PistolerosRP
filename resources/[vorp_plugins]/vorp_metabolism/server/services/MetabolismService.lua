MetabolismService = {}
local Core = {}

Citizen.CreateThread(function()
	TriggerEvent("getCore", function(core)
		Core = core;
	end)
end)

MetabolismService.RegisterUsableItems = function()
    Wait(3000)
    Log.print("Loading " .. tostring(#Config.ItemsToUse) .. "items usable")
    for idx, item in pairs(Config.ItemsToUse) do
        TriggerEvent("vorpCore:registerUsableItem", tostring(item["Name"]), function (data)
            local _source = data.source
            local itemLabel = data.item.label

            TriggerClientEvent("vorpmetabolism:useItem", _source, idx, itemLabel)
            TriggerEvent("vorpCore:subItem", _source, tostring(item["Name"]), 1)
        end)
    end
end

---@param status string
MetabolismService.SaveLastStatus = function(status)
    local _source = source
    local sourceCharacter = Core.getUser(_source).getUsedCharacter
    sourceCharacter.setStatus(status)
end

MetabolismService.GetLastStatus = function()
    local _source = source
    local sourceCharacter = Core.getUser(_source).getUsedCharacter
    local s_status = json.decode(sourceCharacter.status)

    if #s_status > 5 then
        TriggerClientEvent("vorpmetabolism:StartFunctions", _source, s_status)
    else
        local status = {
            Hunger = tonumber(Config.FirstHungerStatus),
            Thirst = tonumber(Config.FirstThirstStatus),
            Metabolism = tonumber(Config.FirstMetabolismStatus)
        }

        sourceCharacter.setStatus(json.encode(status))
        TriggerClientEvent("vorpmetabolism:StartFunctions", _source, status)
    end
end