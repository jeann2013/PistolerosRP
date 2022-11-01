local proximity = 10

TriggerEvent('chat:addSuggestion', '/showid', 'Show your name to nearby players', {
    { name="name", help="First and last name of your character" },
})

RegisterNetEvent('ShowId::PostMessage')
AddEventHandler('ShowId::PostMessage', function(player, args)
    local playerCoords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(player)))
    local coords = GetEntityCoords(PlayerPedId())

    if GetDistanceBetweenCoords(playerCoords, coords, false) < proximity then
        TriggerEvent('chat:addMessage', {
            color = { 255,255,0},
            multiline = true,
            args = args
        })
    end
end)