local VORPcore = exports.vorp_core:GetCore()
local PlayerJob, PlayerGroup, CitizenID
local isOnDuty = false
local Selected = true
local hasDisplayedUi = false 
local isMenuOpen = false

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function()
    Selected = true
    TriggerServerEvent('vln-dutyshower:PlayerJob')
end)

RegisterNetEvent("qq-dutyshower:receiveDutyList")
AddEventHandler("qq-dutyshower:receiveDutyList", function(ActiveDuty, Positions)
    if isMenuOpen then
        SendNUIMessage({ type = "clearUI" })
        for _, player in pairs(ActiveDuty) do
            SendNUIMessage({
                type = 'addPlayer',
                id = player.id,
                name = player.name,
                job = player.job,
                jobLabel = player.jobLabel,
                grade = player.grade,

            })
        end
        SendNUIMessage({ type = 'showUi', pos = Positions })
    else
        hasDisplayedUi = true
        SendNUIMessage({ type = "clearUI" })
        for _, player in pairs(ActiveDuty) do
            SendNUIMessage({
                type = 'addPlayer',
                id = player.id,
                name = player.name,
                job = player.job,
                jobLabel = player.jobLabel,
                grade = player.grade
            })
        end
        SendNUIMessage({ type = 'showUi', pos = Positions })
        isMenuOpen = true
    end
end)

RegisterCommand('showduty', function()
    if isMenuOpen then
        SendNUIMessage({ type = 'close' })
        isMenuOpen = false
        hasDisplayedUi = false
    else
        TriggerServerEvent('vln-dutyshower:PlayerJob')
        TriggerServerEvent("vln-dutyshower:requestDutyList")
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000) 
        TriggerServerEvent('vln-dutyshower:PlayerJob') 
    end
end)

RegisterNUICallback('saveLocation', function(data) 
    local playerid = data.id
    local top = data.top
    local left = data.left
    SetNuiFocus(false, false)
    if top ~= 0 and left ~= 0 then
        TriggerServerEvent('vln-dutyshower:SaveLocation', playerid, top, left)
        Wait(1000)
        TriggerServerEvent("vln-dutyshower:requestDutyList")
    end
    
end)

RegisterNUICallback('playerLocation', function(data) 
    local playerid = data.id  
    local targetPlayer = GetPlayerFromServerId(tonumber(playerid))
    if targetPlayer ~= -1 then  
        local targetPed = GetPlayerPed(targetPlayer)
        local targetCoords = GetEntityCoords(targetPed)

        StartGpsMultiRoute(6, true, true)
        AddPointToGpsMultiRoute(targetCoords.x, targetCoords.y, targetCoords.z)

        SetGpsMultiRouteRender(true)
    else
        print("Target player not found.")
    end
end)



RegisterCommand('editposition', function()
    SendNUIMessage({
        type = 'editposition',
    })
    SetNuiFocus(true, true)
end)


RegisterNUICallback('hideNui', function() 
    SetNuiFocus(false, false)
end)

RegisterNetEvent("qq-dutyshower:updateDutyList")
AddEventHandler("qq-dutyshower:updateDutyList", function(ActiveDuty)
    if hasDisplayedUi and isMenuOpen then
        SendNUIMessage({ type = "clearUI" })
        for _, player in pairs(ActiveDuty) do
            SendNUIMessage({
                type = 'addPlayer',
                id = player.id,
                name = player.name,
                job = player.job,
                jobLabel = player.jobLabel,
                grade = player.grade
            })
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isMenuOpen then
            if IsControlJustReleased(0, 0xE8342FF2) then
                SetNuiFocus(true, true)
            end
        end
    end
end)