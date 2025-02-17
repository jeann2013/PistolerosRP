
TriggerEvent("chat:addSuggestion", "/" .. "dado 1", "/dado 1 y 3", {})
RegisterCommand('dado', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end
	
	local dices, c = tonumber(args[1]), 1
	if dices then
		
		if dices > 3 then
			TriggerClientEvent("vorp:TipRight", source, 'Debes de seleccionar entre 1 y 3', 5000)
			return
		end
		local dice = {}
		while c <= dices do
			table.insert( dice, { dicenum = math.random(1, 6)})
			c = c + 1
		end
		TriggerClientEvent('syn_dice:ToggleDiceAnim', source)
		Citizen.Wait(2000)
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source, dice, "dices")
	else
		TriggerClientEvent("vorp:TipRight", source, 'Debes de seleccionar entre 1 y 3', 5000)
	end
end, false)

RegisterCommand('ppt', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end
	TriggerClientEvent('syn_dice:TogglerpsAnim', source)
	Citizen.Wait(2000)
	anim = tonumber(args[1])
	if not anim then
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source, math.random(1, 3), "rps")
	elseif anim == 1 then
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source,1, "rps")
	elseif anim == 2 then
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source, 3, "rps")
	elseif anim == 3 then
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source, 2, "rps")
	end

end, false)

RegisterCommand('moneda', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end
	TriggerClientEvent('syn_dice:TogglecoinAnim', source)
	Citizen.Wait(2000)
	anim = nil
	if not anim then
		TriggerClientEvent('syn_dice:ToggleDisplay', -1, source, math.random(1, 2), "coin")
	end

end, false)
