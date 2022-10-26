RegisterNetEvent("vorpmetabolism:changeValue")
AddEventHandler("vorpmetabolism:changeValue", MetabolismService.ChangeValue)

RegisterNetEvent("vorpmetabolism:setValue")
AddEventHandler("vorpmetabolism:setValue", MetabolismService.SetValue)

RegisterNetEvent("vorpmetabolism:getValue")
AddEventHandler("vorpmetabolism:getValue", MetabolismService.GetValue)

RegisterNetEvent("vorpmetabolism:setHud")
AddEventHandler("vorpmetabolism:setHud", MetabolismService.SetHUD)

RegisterNetEvent("vorpmetabolism:useItem")
AddEventHandler("vorpmetabolism:useItem", MetabolismService.ConsumeItem)

RegisterNetEvent("vorpmetabolism:StartFunctions")
AddEventHandler("vorpmetabolism:StartFunctions", MetabolismService.StartFunctions)