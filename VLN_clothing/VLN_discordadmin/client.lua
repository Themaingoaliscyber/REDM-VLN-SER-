RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    TriggerServerEvent("vln_admin:adddiscordid",charid)
end)

RegisterNetEvent("vln_admin:teleporttoloc")
AddEventHandler("vln_admin:teleporttoloc", function(location)
    local loc = Config.teleport[location]
    if loc ~= nil then 
        DoScreenFadeOut(1000)
        while IsScreenFadingOut() do
          Wait(0)
        end
        SetEntityCoords(PlayerPedId(), loc.x, loc.y, loc.z)
        Wait(2000)
        DoScreenFadeIn(1000)
        while IsScreenFadingIn() do
            Wait(0)
        end
    end
end)

RegisterNetEvent("vln_chat:clearall") 
AddEventHandler("vln_chat:clearall", function()
	ExecuteCommand("clear")
end)
