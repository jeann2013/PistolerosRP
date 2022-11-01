RegisterCommand("showid", function (source, args)
    local src = source

    if args == nil or args[1] == nil then
        TriggerClientEvent('chat:addMessage', src, {
            color = { 255, 0, 0},
            multiline = true,
            args = {'Error', 'Please enter a name.'}
        })
    else
        TriggerClientEvent('ShowId::PostMessage', -1, src, {GetPlayerName(src) .. ' (' .. src .. ') ' .. 'shows ID', args[1]})
    end
end)