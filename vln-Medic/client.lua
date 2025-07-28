VORPcore = nil
RSGCore = nil

if Config.Framework == 'VORP' then
    VORPcore = exports.vorp_core:GetCore()
elseif Config.Framework == 'RSG' then
    RSGCore = exports['rsg-core']:GetCoreObject()
else
    print('Unsupported framework configured in Config.Framework.')
end

local Active = false
local medicVehicle = nil
local medicPed = nil
local CooldownActive = false
local T = Translation.Langs[Config.Lang]

local function CleanupEntities()
    if DoesEntityExist(medicVehicle) then
        DeleteEntity(medicVehicle)
    end
    if DoesEntityExist(medicPed) then
        DeleteEntity(medicPed)
    end
end

local function ResetScriptState()
    Active = false
    medicVehicle = nil
    medicPed = nil
    CooldownActive = false
end

local function Notify(msg, state)
    if Config.Framework == 'VORP' then
        VORPcore.NotifyRightTip(msg, 4000)
    elseif Config.Framework == 'RSG' then
        RSGCore.Functions.Notify(msg, state, 4000)
    end
end

RegisterCommand(Config.Command, function(source, args, raw)
    local playerPed = PlayerPedId()

    if IsEntityDead(playerPed) then
        if not CooldownActive then
            TriggerServerEvent('vln-Medic:docOnline')
        else
            Notify(T.inCooldown, "error")
        end
    else
        Notify(T.onlyDeath, "error")
    end
end)

RegisterNetEvent('vln-Medic:docOnlineResponse')
AddEventHandler('vln-Medic:docOnlineResponse', function(doctor, canpay)
    if doctor > 0 then
        Notify(T.haveMedicOn, "error")
        ResetScriptState()
    elseif not canpay then
        Notify(T.notHaveMoney, "error")
        ResetScriptState()
    else
        Notify(T.medicIsComing, 'success')

        local playerCoords = GetEntityCoords(PlayerPedId())
        local spawnX = playerCoords.x + math.random(-15, 15)
        local spawnY = playerCoords.y + math.random(-15, 15)
        local spawnZ = playerCoords.z

        TriggerEvent('vln-Medic:client:spawnMedic', spawnX, spawnY, spawnZ)
        CooldownActive = true
    end
end)

RegisterNetEvent('vln-Medic:client:spawnMedic')
AddEventHandler('vln-Medic:client:spawnMedic', function()
    CleanupEntities()
    CooldownActive = true

    local vehHash = GetHashKey("wagondoc01x")
    RequestModel(vehHash)

    while not HasModelLoaded(vehHash) do
        Wait(1)
    end

    local ped = PlayerPedId()
    local location = GetEntityCoords(ped)
    local x, y, z = table.unpack(location)
    local _, nodePosition = GetClosestVehicleNode(x - 15, y, z, 0, 3.0, 0.0)
    local distance = math.floor(#(nodePosition - location))
    local onRoad = false

    if distance < 50 then
        onRoad = true
    end

    if Config.SpawnOnRoadOnly and not onRoad then
        Notify(T.roadTooFar, 'error')
        return
    end

    local spawnPos = onRoad and nodePosition or location
    local spawnHeading = GetEntityHeading(PlayerPedId())

    medicVehicle = CreateVehicle(vehHash, spawnPos, spawnHeading, true, false)
    SetVehicleOnGroundProperly(medicVehicle)
    SetEntityAsMissionEntity(medicVehicle, true, true)
    SetVehicleEngineOn(medicVehicle, true, true, false)
    SetEntityHeading(medicVehicle, spawnHeading)

    local pedModelHash = GetHashKey("CS_DrMalcolmMacIntosh")
    RequestModel(pedModelHash)

    while not HasModelLoaded(pedModelHash) do
        Wait(1)
    end

    medicPed = CreatePedInsideVehicle(medicVehicle, pedModelHash, VS_DRIVER, true, false)
    TaskVehicleDriveToCoord(medicPed, medicVehicle, spawnPos.x, spawnPos.y, spawnPos.z, 10.0, 0, GetEntityModel(medicVehicle), 524863, 5.0)

    Active = true
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(200)

        if Active then
            local playerCoords = GetEntityCoords(PlayerPedId())
            local medicCoords = GetEntityCoords(medicVehicle)
            local medicPedCoords = GetEntityCoords(medicPed)
            local distToMedic = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, medicCoords.x, medicCoords.y, medicCoords.z)
            local distToMedicPed = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, medicPedCoords.x, medicPedCoords.y, medicPedCoords.z)

            if distToMedic <= 20 then
                if not IsPedInVehicle(medicPed, medicVehicle, false) then
                    TaskGoToCoordAnyMeans(medicPed, playerCoords.x, playerCoords.y, playerCoords.z, 1.0, 0, 0, 786603, 0xbf800000)
                else
                    TaskLeaveVehicle(medicPed, medicVehicle, 0)
                end
            end

            if distToMedicPed <= 1 then
                RequestAnimDict("script_rc@cldn@ig@rsc2_ig1_questionshopkeeper")

                while not HasAnimDictLoaded("script_rc@cldn@ig@rsc2_ig1_questionshopkeeper") do
                    Citizen.Wait(0)
                end

                TaskPlayAnim(medicPed, "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper", "inspectfloor_player", 8.0, -8.0, -1, 1, 0, false, false, false)
                Notify(T.revived, 'sucess')
                Citizen.Wait(Config.ReviveTime)
                ClearPedTasks(medicPed)
                Citizen.Wait(500)
                if Config.Framework == 'VORP' then
                    TriggerEvent('vorp:resurrectPlayer')
                elseif Config.Framework == 'RSG' then
                    TriggerEvent('vln-Medic:client:revive')
                else
                    print('Unsupported framework configured in Config.Framework.')
                end
                TriggerServerEvent('vln-Medic:charge')
                CleanupEntities()
                ResetScriptState()
            end
        end
    end
end)

AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    ClearPedTasks(medicPed)
    CleanupEntities()
    ResetScriptState()
end)
