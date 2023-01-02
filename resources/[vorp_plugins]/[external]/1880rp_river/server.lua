Inventory = exports.vorp_inventory:vorp_inventoryApi()


RegisterServerEvent('1880rp_river:giveitem')
AddEventHandler('1880rp_river:giveitem', function(item)
    local _source = source
    TriggerClientEvent("vorp:TipRight", _source, "Tienes agua sucia", 3000)
	Inventory.addItem(_source, item, 1)

end)