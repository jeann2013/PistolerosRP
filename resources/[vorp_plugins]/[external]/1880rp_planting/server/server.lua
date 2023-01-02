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
	local countVegetable = math.random(3, 8)
	local countseed = math.random(0, 2)
	if tipo == "CRP_TOBACCOPLANT_AC_SIM" then
		GiveSeedAndVegetable(countseed, 'tobacco', _source, countVegetable,'tobaccoseed')
	elseif tipo == "CRP_SUGARCANE_AC_SIM" then
		GiveSeedAndVegetable(countseed, 'sugar', _source, countVegetable,'sugarcaneseed')
	elseif tipo == "CRP_CORNSTALKS_AB_SIM" then
		GiveSeedAndVegetable(countseed, 'corn', _source, countVegetable,'cornseed')
	elseif tipo == "CRP_LETTUCE_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'lettuce', _source, countVegetable, 'lettuceseed')
	elseif tipo == "CRP_TOMATOES_AA_SIM" then		
		GiveSeedAndVegetable(countseed, 'tomatoes', _source, countVegetable, 'tomatoesseed')
	elseif tipo == "CRP_BROCCOLI_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'broccoli', _source, countVegetable, 'broccolisseed')
	elseif tipo == "CRP_WHEAT_DRY_LONG_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'weat', _source, countVegetable, 'weatsseed')
	elseif tipo == "CRP_POTATO_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'potato', _source, countVegetable, 'potatosseed')
	elseif tipo == "OREGANO_P" then
		GiveSeedAndVegetable(countseed, 'oregano', _source, countVegetable, 'oreganosseed')
	elseif tipo == "RDR_BUSH_YUCCA_DEAD_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'yucca', _source, countVegetable, 'yuccasseed')
	elseif tipo == "CRP_BERRY_AA_SIM" then
		GiveSeedAndVegetable(countseed, 'berry', _source, countVegetable, 'berrysseed')
	elseif tipo == "CRP_GINSENG_BA_SIM" then
		GiveSeedAndVegetable(countseed, 'ginseng', _source, countVegetable, 'ginsengsseed')
	elseif tipo == "CRP_COTTON_BE_SIM" then
		GiveSeedAndVegetable(countseed,'cotton',_source, countVegetable, 'cottonsseed')
	elseif tipo == "CRP_CARROTS_BA_SIM" then
		GiveSeedAndVegetable(countseed,'carrots', _source, countVegetable, 'carrotsseed')
	end
end)

function GiveSeedAndVegetable(countseed, name, _source, countVegetable, nameSeed)
	TriggerClientEvent("vorp:TipRight", _source, _U("collected"):gsub("%$1", countVegetable):gsub("%$2", _U(name)), 3000)
	Inventory.addItem(_source, name, countVegetable)
	if Config.GiveSeed then
		TriggerClientEvent("vorp:TipRight", _source, _U("collectedSeed"):gsub("%$1", countseed):gsub("%$2", _U(name)), 3000)
		Inventory.addItem(_source, nameSeed, countseed)
	end
end
