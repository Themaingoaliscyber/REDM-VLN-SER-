TriggerEvent("getCore",function(core)
    VorpCore = core
end)

function PlayAnimation(ped, dict, name)
    if not DoesAnimDictExist(dict) then
        return
    end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
    Citizen.Wait(0)
    end
    TaskPlayAnim(ped, dict, name, -1.0, -0.5, -1, 1, 0, true, 0, false, 0, false)
    RemoveAnimDict(dict)
end

RegisterNetEvent("sirevlc_mega_pack_female", function()
    local ped = PlayerPedId()
    if IsPedMale(PlayerPedId()) then 
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    else
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    end
    Wait(2000)
    ClearPedEnvDirt(PlayerPedId())
    ClearPedBloodDamage(PlayerPedId())
    ClearPedDamageDecalByZone(PlayerPedId(), 10, "ALL")
    TriggerEvent("Outsider_needs:Client:ClearDirt")
    ClearPedTasks(ped)
end)

RegisterNetEvent("sirevlc_mob_outfits", function()
    local ped = PlayerPedId()
    if IsPedMale(PlayerPedId()) then 
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    else
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    end
    Wait(2000)
    ClearPedEnvDirt(PlayerPedId())
    ClearPedBloodDamage(PlayerPedId())
    ClearPedDamageDecalByZone(PlayerPedId(), 10, "ALL")
    TriggerEvent("Outsider_needs:Client:ClearDirt")
    ClearPedTasks(ped)
end)

RegisterNetEvent("sirevlc_dress_pack_01", function()
    local ped = PlayerPedId()
    if IsPedMale(PlayerPedId()) then 
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    else
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    end
    Wait(2000)
    ClearPedEnvDirt(PlayerPedId())
    ClearPedBloodDamage(PlayerPedId())
    ClearPedDamageDecalByZone(PlayerPedId(), 10, "ALL")
    TriggerEvent("Outsider_needs:Client:ClearDirt")
    ClearPedTasks(ped)
end)

RegisterNetEvent("sirevlc_eagle_flies", function()
    local ped = PlayerPedId()
    if IsPedMale(PlayerPedId()) then 
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    else
        PlayAnimation(ped, "mech_inventory@clothing@outfit_change", "outfit_change_offhand")
    end
    Wait(2000)
    ClearPedEnvDirt(PlayerPedId())
    ClearPedBloodDamage(PlayerPedId())
    ClearPedDamageDecalByZone(PlayerPedId(), 10, "ALL")
    TriggerEvent("Outsider_needs:Client:ClearDirt")
    ClearPedTasks(ped)
end)