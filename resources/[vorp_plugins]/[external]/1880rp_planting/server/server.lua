Inventory = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()
	Citizen.Wait(2000)
	Inventory.RegisterUsableItem("tobaccoseed", function(data)
		Inventory.subItem(data.source, "tobaccoseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_TOBACCOPLANT_AA_SIM", "CRP_TOBACCOPLANT_AB_SIM", "CRP_TOBACCOPLANT_AC_SIM")
	end)
	
	Inventory.RegisterUsableItem("sugarcaneseed", function(data)
		Inventory.subItem(data.source, "sugarcaneseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_SUGARCANE_AA_SIM", "CRP_SUGARCANE_AB_SIM", "CRP_SUGARCANE_AC_SIM")
	end)
	
	Inventory.RegisterUsableItem("cornseed", function(data)
		Inventory.subItem(data.source, "cornseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_CORNSTALKS_CB_SIM", "CRP_CORNSTALKS_CA_SIM", "CRP_CORNSTALKS_AB_SIM")
	end)

	Inventory.RegisterUsableItem("lettuceseed", function(data)
		Inventory.subItem(data.source, "lettuceseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_LETTUCE_AA_SIM", "CRP_LETTUCE_AA_SIM", "CRP_LETTUCE_AA_SIM")
	end)

	Inventory.RegisterUsableItem("tomatoesseed", function(data)
		Inventory.subItem(data.source, "tomatoesseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_TOMATOES_SAP_AA_SIM", "CRP_TOMATOES_HAR_AA_SIM", "CRP_TOMATOES_AA_SIM")
	end)

	Inventory.RegisterUsableItem("broccolisseed", function(data)
		Inventory.subItem(data.source, "broccolisseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_BROCCOLI_AA_SIM", "CRP_BROCCOLI_AA_SIM", "CRP_BROCCOLI_AA_SIM")
	end)

	Inventory.RegisterUsableItem("weatsseed", function(data)
		Inventory.subItem(data.source, "weatsseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_WHEAT_SAP_LONG_AA_SIM", "CRP_WHEAT_SAP_LONG_AB_SIM", "CRP_WHEAT_DRY_LONG_AA_SIM")
	end)

	Inventory.RegisterUsableItem("potatosseed", function(data)
		Inventory.subItem(data.source, "potatosseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_POTATO_SAP_AA_SIM", "CRP_POTATO_SAP_AA_SIM", "CRP_POTATO_AA_SIM")
	end)

	Inventory.RegisterUsableItem("oreganosseed", function(data)
		Inventory.subItem(data.source, "oreganosseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "OREGANO_P", "OREGANO_P", "OREGANO_P")
	end)

	Inventory.RegisterUsableItem("yuccasseed", function(data)
		Inventory.subItem(data.source, "yuccasseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "RDR_BUSH_YUCCA_AA_SIM", "RDR_BUSH_YUCCA_AA_SIM", "RDR_BUSH_YUCCA_DEAD_AA_SIM")
	end)

	Inventory.RegisterUsableItem("berrysseed", function(data)
		Inventory.subItem(data.source, "berrysseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_BERRY_HAR_AA_SIM", "CRP_BERRY_HAR_AA_SIM", "CRP_BERRY_AA_SIM")
	end)

	Inventory.RegisterUsableItem("ginsengsseed", function(data)
		Inventory.subItem(data.source, "ginsengsseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_GINSENG_AB_SIM", "CRP_GINSENG_AA_SIM", "CRP_GINSENG_BA_SIM")
	end)

	Inventory.RegisterUsableItem("cottonsseed", function(data)
		Inventory.subItem(data.source, "cottonsseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_COTTON_BA_SIM", "CRP_COTTON_BB_SIM", "CRP_COTTON_BE_SIM")
	end)

	Inventory.RegisterUsableItem("carrotsseed", function(data)
		Inventory.subItem(data.source, "carrotsseed", 1)
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_CARROTS_SAP_BA_SIM", "CRP_CARROTS_SAP_BA_SIM", "CRP_CARROTS_BA_SIM")
	end)

	
	
	Inventory.RegisterUsableItem("wateringcan", function(data)
		Inventory.subItem(data.source, "wateringcan", 1)
		TriggerClientEvent('poke_planting:regar1', data.source)
	end)
end)

RegisterServerEvent('poke_planting:giveitem')
AddEventHandler('poke_planting:giveitem', function(tipo)
    local _source = source
	local count = math.random(3, 8)
	if tipo == "CRP_TOBACCOPLANT_AC_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de tabaco', 3000)
		Inventory.addItem(_source, "tobacco", count)
	elseif tipo == "CRP_SUGARCANE_AC_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de de azucar', 3000)
		Inventory.addItem(_source, "sugar", count)
	elseif tipo == "CRP_CORNSTALKS_AB_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de maiz', 3000)
		Inventory.addItem(_source, "corn", count)
	elseif tipo == "CRP_LETTUCE_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de lechuga', 3000)
		Inventory.addItem(_source, "lettuce", count)
	elseif tipo == "CRP_TOMATOES_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de tomates', 3000)
		Inventory.addItem(_source, "tomatoes", count)
	elseif tipo == "CRP_BROCCOLI_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de brocoli', 3000)
		Inventory.addItem(_source, "broccoli", count)
	elseif tipo == "CRP_WHEAT_DRY_LONG_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de trigo', 3000)
		Inventory.addItem(_source, "wheat", count)
	elseif tipo == "CRP_POTATO_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de papa', 3000)
		Inventory.addItem(_source, "potato", count)
	elseif tipo == "OREGANO_P" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de oregano', 3000)
		Inventory.addItem(_source, "oregano", count)
	elseif tipo == "RDR_BUSH_YUCCA_DEAD_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de yuca', 3000)
		Inventory.addItem(_source, "yucca", count)
	elseif tipo == "CRP_BERRY_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de arandano', 3000)
		Inventory.addItem(_source, "berry", count)
	elseif tipo == "CRP_GINSENG_BA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de ginseng', 3000)
		Inventory.addItem(_source, "ginseng", count)
	elseif tipo == "CRP_COTTON_BE_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de algodon', 3000)
		Inventory.addItem(_source, "cotton", count)		
	elseif tipo == "CRP_CARROTS_BA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'Has recolectado [X'..count..'] de zanahoria', 3000)
		Inventory.addItem(_source, "carrots", count)

	end
end)
