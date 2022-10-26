RegisterNUICallback('UnequipWeapon', NUIService.NUIUnequipWeapon)

RegisterNetEvent("vorp_inventory:ProcessingReady")
AddEventHandler("vorp_inventory:ProcessingReady", NUIService.setProcessingPayFalse)