Make sure that the ipl with the interior is enabled inside the building.
1. For opening doors register in the file "interiors.lua":
local unlocked_door_hashes = {
1963415953,
2847752952,
}

AddEventHandler('onClientMapStart', function()
    Citizen.CreateThread(function()
        for k, v in pairs(unlocked_door_hashes) do 
            Citizen.InvokeNative(0xD99229FE93B46286, v, 1, 0, 0, 0, 0, 0)
            DoorSystemSetDoorState(v, 0)
        end
    end)
end)

2. Add the files "Taxidermist_museum.xml" and "Deleting_taxidermist_objects.xml" to resources\[local]\[maps]\mymap, by writing their in "fxmanifest.lua".

If you need help, create a ticket on my discord channel.