Utils = {}

Utils.WaistUtils = {
    -2045421226, -- Skinny
    -1745814259,
    -325933489,
    -1065791927,
    -844699484,
    -1273449080,
    927185840,
    149872391,
    399015098,
    -644349862,
    1745919061, -- Normal
    1004225511,
    1278600348,
    502499352,
    -2093198664,
    -1837436619,
    1736416063,
    2040610690,
    -1173634986,
    -867801909,
    1960266524, -- Fat
  }

Utils.StrCapitalize = function(str)
    return (str:gsub("^%l", string.upper))
end

Utils.PlayAnimEat = function(propName)
    local playerCoords = GetEntityCoords(PlayerPedId(), true, true)
    local dict = "mech_inventory@clothing@bandana"
    local anim = "NECK_2_FACE_RH"

    RequestAnimDict(dict)
    while HasAnimDictLoaded(dict) do
        Wait(100)
    end

    local hashItem = GetHashKey(propName)
    local prop = CreateObject(hashItem, playerCoords.x, playerCoords.y, playerCoords.z + 0.2, true, true, false, false, true)
    local boneIdx = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_Finger12")

    Wait(1000)

    Citizen.InvokeNative(0xEA47FE3719165B94, PlayerPedId(), dict, anim, 1.0, 8.0, 5000, 31, 0.0, false, false, false)
    Citizen.InvokeNative(0x6B9BBD38AB0796DF, prop, PlayerPedId(), boneIdx, 0.02, 0.028, 0.001, 15.0, 175.0, 0.0, true, true, false, true, 1, true)

    Wait(6000)

    DeleteObject(prop)
    ClearPedSecondaryTask(PlayerPedId())
end

Utils.PlayAnimDrink = function(propName)
    local playerCoords = GetEntityCoords(PlayerPedId(), true, true)
    local dict = "amb_rest_drunk@world_human_drinking@male_a@idle_a"
    local anim = "idle_a"

    if not IsPedMale(PlayerPedId()) then
        dict = "amb_rest_drunk@world_human_drinking@female_a@idle_b"
        anim = "idle_b"
    end

    RequestAnimDict(dict)
    while HasAnimDictLoaded(dict) do
        Wait(100)
    end

    local hashItem = GetHashKey(propName)
    local prop = CreateObject(hashItem, playerCoords.x, playerCoords.y, playerCoords.z + 0.2, true, true, false, false, true)
    local boneIdx = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_Finger12")

    Wait(1000)

    Citizen.InvokeNative(0xEA47FE3719165B94, PlayerPedId(), dict, anim, 1.0, 8.0, 5000, 31, 0.0, false, false, false)
    Citizen.InvokeNative(0x6B9BBD38AB0796DF, prop, PlayerPedId(), boneIdx, 0.02, 0.028, 0.001, 15.0, 175.0, 0.0, true, true, false, true, 1, true)

    Wait(6000)

    DeleteObject(prop)
    ClearPedSecondaryTask(PlayerPedId())
end

---@param cb function
Utils.CreateThread = function (cb)
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            cb()
        end
    end)
end

Utils.Switch = function(c)
    local swtbl = {
        casevar = c,
        caseof = function (self, code)
          local f
          if (self.casevar) then
            f = code[self.casevar] or code.default
          else
            f = code.missing or code.default
          end
          if f then
            if type(f)=="function" then
              return f(self.casevar,self)
            else
              error("case "..tostring(self.casevar).." not a function")
            end
          end
        end
    }
    return swtbl
end