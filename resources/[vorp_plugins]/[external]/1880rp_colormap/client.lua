Citizen.CreateThread(function()
    for v = 1, #Config.Zones, 1 do
        Citizen.InvokeNative(0x563FCB6620523917, Config.Zones[v].Hash, GetHashKey(Config.Zones[v].Color));
    end
end)