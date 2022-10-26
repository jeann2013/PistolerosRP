RegisterServerEvent("vorpmetabolism:SaveLastStatus")
AddEventHandler("vorpmetabolism:SaveLastStatus", MetabolismService.SaveLastStatus)

RegisterServerEvent("vorpmetabolism:GetStatus")
AddEventHandler("vorpmetabolism:GetStatus", MetabolismService.GetLastStatus)

AddEventHandler("OnResourceStart", function ()
    
end)