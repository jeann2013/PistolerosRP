local redemrp = false

RegisterServerEvent("Telegram:GetMessages")
AddEventHandler("Telegram:GetMessages", function(src)
	local _source
	
	if not src then 
		_source = source
	else 
		_source = src
	end

	if redemrp then 
		TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
			local recipient = user.getIdentifier()
			local recipientid = user.getSessionVar("charid")
			
			MySQL.Async.fetchAll("SELECT * FROM telegrams WHERE recipient=@recipient AND recipientid=@recipientid ORDER BY id DESC", { ['@recipient'] = recipient, ['@recipientid'] = recipientid }, function(result)
				TriggerClientEvent("Telegram:ReturnMessages", _source, result)
			end)
		end)
	else 
		TriggerEvent("vorp:getCharacter", _source, function(user)
			local recipient = user.identifier
			
			exports.ghmattimysql:execute("SELECT * FROM telegrams WHERE recipient=@recipient ORDER BY id DESC", { ['@recipient'] = recipient }, function(result)
				TriggerClientEvent("Telegram:ReturnMessages", _source, result)
			end)
		end)
	end
end)

RegisterServerEvent("Telegram:SendMessage")
AddEventHandler("Telegram:SendMessage", function(firstname, lastname, message, players)
	local _source = source

	if redemrp then 
		TriggerEvent("redemrp:getPlayerFromId", _source, function(user)
			local sender = user.getName()

			-- get the steam and character id of the recipient
			MySQL.Async.fetchAll("SELECT identifier, characterid FROM characters WHERE firstname=@firstname AND lastname=@lastname", { ['@firstname'] = firstname, ['@lastname'] = lastname}, function(result)
				if result[1] then 
					local recipient = result[1].identifier 
					local recipientid = result[1].characterid

					local paramaters = { ['@sender'] = sender, ['@recipient'] = recipient, ['@recipientid'] = recipientid, ['@message'] = message }

					MySQL.Async.execute("INSERT INTO telegrams (sender, recipient, recipientid, message) VALUES (@sender, @recipient, @recipientid, @message)",  paramaters, function(count)
						if count > 0 then 
							for k, v in pairs(players) do
								TriggerEvent('redemrp:getPlayerFromId', v, function(user)
									if user.getName() == firstname .. " " .. lastname then 
										TriggerClientEvent("redemrp_notification:start", v, "Has recibido un telegrama.", 3)
									end
								end)
							end
						else 
							TriggerClientEvent("redemrp_notification:start", _source, "No podemos procesar tu Telegram en este momento. Vuelve a intentarlo más tarde.", 3)
						end
					end)

					TriggerClientEvent("redemrp_notification:start", _source, "Su telegrama ha sido enviado", 3)
				else 
					TriggerClientEvent("redemrp_notification:start", _source, "No se puede procesar Telegram. Nombre o apellidos no válidos.", 3)
				end
			end)
		end)
	else 
		TriggerEvent("vorp:getCharacter", _source, function(user)
			local sender = user.firstname .. " " .. user.lastname

			exports.ghmattimysql:execute("SELECT identifier FROM characters WHERE firstname=@firstname AND lastname=@lastname", { ['@firstname'] = firstname, ['@lastname'] = lastname}, function(result)
				if result[1] then 
					local recipient = result[1].identifier 

					local paramaters = { ['@sender'] = sender, ['@recipient'] = recipient, ['@recipientid'] = 1, ['@message'] = message }

					exports.ghmattimysql:execute("INSERT INTO telegrams (sender, recipient, recipientid, message) VALUES (@sender, @recipient, @recipientid, @message)",  paramaters, function()
						for k, v in pairs(players) do
							TriggerEvent("vorp:getCharacter", v, function(user)
								local receiver = user.firstname .. " " ..user.lastname

								if receiver == firstname .. " " .. lastname then 
									TriggerClientEvent("vorp:Tip", v, "Has recibido un telegrama.", 3000)
								end
							end)
						end
					end)
					TriggerClientEvent("vorp:Tip", _source, "¡Su telegrama ha sido enviado!", 3000)
				else 
					TriggerClientEvent("vorp:Tip", _source, "No se puede procesar Telegram. Nombre o apellidos no válidos.", 3000)
				end
			end)
		end)
	end
end)

RegisterServerEvent("Telegram:DeleteMessage")
AddEventHandler("Telegram:DeleteMessage", function(id)
	local _source = source

	if redemrp then 
		MySQL.Async.execute("DELETE FROM telegrams WHERE id=@id",  { ['@id'] = id }, function(count)
			if count > 0 then 
				TriggerEvent("Telegram:GetMessages", _source)
			else
				TriggerClientEvent("redemrp_notification:start", _source, "No podemos eliminar tu Telegram en este momento. Por favor, inténtalo de nuevo más tarde.", 3)
			end
		end)
	else 
		exports.ghmattimysql:execute("DELETE FROM telegrams WHERE id=@id",  { ['@id'] = id }, function()
			TriggerEvent("Telegram:GetMessages", _source)
		end)
	end
end)
