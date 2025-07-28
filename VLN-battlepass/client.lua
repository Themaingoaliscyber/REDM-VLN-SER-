local VORPcore = exports.vorp_core:GetCore()  
local ClientRPC = VORPcore

RegisterCommand('battlepass', function()    
   TriggerServerEvent('vln-battlepass:getPlayerData')
end)

RegisterNetEvent('vln-battlepass:receivePlayerData')
AddEventHandler('vln-battlepass:receivePlayerData', function(level, xp, required, is_premium, collected_rewards_free, collectedPremium)
    SendNUIMessage({
        type = "levelShow",
        freeitems = QBattlepass.FreeItems,
        premiumitems = QBattlepass.PremiumItems,
        required = required,
        currentxp = xp,
        level = level,
        premiumactivated = is_premium,
        imagelocation = QBattlepass.ImageLocation,
        collected_rewards_free = collected_rewards_free,
        collected_rewards_premium = collectedPremium,
    })
    
    SetNuiFocus(true, true)
end)



RegisterNUICallback('exit', function() 
    SetNuiFocus(false, false)
    PlaySoundFrontend("NAV_LEFT", "PAUSE_MENU_SOUNDSET", true, 0)
end)


RegisterNUICallback("collectItem", function(data, cb)
    local level = data.level
    local category = data.category

    ClientRPC.Callback.TriggerAsync('vln-battlepass:ClaimReward', function(success,message)
        if success then
            cb({ success = true, message = message})
        else
            cb({ success = false, message = message })
        end
    end, level, category)
end)


RegisterNUICallback('buyPremium', function(data, cb) 
    ClientRPC.Callback.TriggerAsync('vln-battlepass:buyPremium', function(success,message)
        if success then
            cb({ success = true })
            PlaySoundFrontend("NAV_LEFT", "PAUSE_MENU_SOUNDSET", true, 0)
        else
            cb({ success = false, message = message })
            PlaySoundFrontend("NAV_LEFT", "PAUSE_MENU_SOUNDSET", true, 0)
        end
    end, level, category)
 
end)

