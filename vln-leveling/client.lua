
RegisterCommand('showlevel', function()
    TriggerServerEvent('vln-leveling:getPlayerData')
end)

RegisterNetEvent('vln-leveling:receivePlayerData')
AddEventHandler('vln-leveling:receivePlayerData', function(level, xp,required,added)

    SendNUIMessage({
        type = "levelShow",
        level = level,
        xp = xp,
        required = required,
        addedXp = added
    })
end)


RegisterNetEvent('vln-leveling:XpBoost')
AddEventHandler('vln-leveling:XpBoost', function(amount, time, timeUnit, toggle)
    if timeUnit == "minutes" then
        time = time * 60
    end
    
    SendNUIMessage({
        type = "xpboost",
        amount = amount,
        time = time,  
        toggle = toggle,
    })
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    Selected = true
    Citizen.Wait(10000)
    TriggerServerEvent('vln-leveling:getPlayerData')
end)