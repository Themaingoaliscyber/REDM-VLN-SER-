local VORPcore = exports.vorp_core:GetCore()  
local progressbar = exports.vorp_progressbar:initiate()
local ClientRPC = VORPcore
local Selected = true
local sleep = 2000
local targetShop = nil
local playerjob
local playerrank
local storageData = {}  
local PlayerJob
local PlayerGroup
local RotateLeftPrompt
local RotateRightPrompt
local CancelPrompt
local SetPrompt
local openMailbox
local SetPrompt
local PromptPlacerGroup = GetRandomIntInRange(0, 0xffffff)
local gangData = {} 
local CitizenID 
local invited = false
local VORPutils = {}
local playerGangId = nil
local GangLeader = false

TriggerEvent("getUtils", function(utils)
    VORPutils = utils
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        TriggerServerEvent("vln-gang:PlayerJob")
    end
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    TriggerServerEvent("vln-gang:PlayerJob")
    Citizen.Wait(500) -- Allow time for CitizenID to be set
    Selected = true
end)

RegisterNetEvent("vln-gang:SetPlayerJob")
AddEventHandler("vln-gang:SetPlayerJob", function(Job, group, cid)
    PlayerJob = Job
    PlayerGroup = group
    CitizenID = cid
    GatherStorageLocations()
end)

local prompts = GetRandomIntInRange(0, 0xffffff)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local str = Translation.Cancel
    CancelPrompt = PromptRegisterBegin()
    PromptSetControlAction(CancelPrompt, Prompts.Cancel)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(CancelPrompt, str)
    PromptSetEnabled(CancelPrompt, true)
    PromptSetVisible(CancelPrompt, true)
    PromptSetHoldMode(CancelPrompt, true)
    PromptSetGroup(CancelPrompt, PromptPlacerGroup)
    PromptRegisterEnd(CancelPrompt)

    local str = Translation.Place
    SetPrompt = PromptRegisterBegin()
    PromptSetControlAction(SetPrompt, Prompts.Place)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(SetPrompt, str)
    PromptSetEnabled(SetPrompt, true)
    PromptSetVisible(SetPrompt, true)
    PromptSetHoldMode(SetPrompt, true)
    PromptSetGroup(SetPrompt, PromptPlacerGroup)
    PromptRegisterEnd(SetPrompt)
end)


Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local str = Translation.ManageStorage
    storagePrompt = PromptRegisterBegin()
    PromptSetControlAction(storagePrompt, Prompts.Inspect)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(storagePrompt, str)
    PromptSetEnabled(storagePrompt, 1)
    PromptSetVisible(storagePrompt, 1)
    PromptSetStandardMode(storagePrompt, 1)
    PromptSetHoldMode(storagePrompt, 1)
    PromptSetGroup(storagePrompt, prompts)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, storagePrompt, true)
    PromptRegisterEnd(storagePrompt)
end)


RegisterNetEvent("vln-gang:storageplace")
AddEventHandler("vln-gang:storageplace", function(size, itemname)
    PropPlacerFirst(size, itemname)
end)

function splitBySpaces(input)
    local result = {}
    for word in input:gmatch("%S+") do
        table.insert(result, word)
    end
    return result
end

RegisterNetEvent('vln-gang:closenui')
AddEventHandler('vln-gang:closenui', function()
    SendNUIMessage({
        type = "close"
    })

end)

RegisterNetEvent("vln-gang:salooncreate")
AddEventHandler("vln-gang:salooncreate", function(charid)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    SendNUIMessage({
        type = "create",
        location = tostring(coords),
    })
    SetNuiFocus(true,true)
end)

RegisterNUICallback('apply', function(data)
    TriggerServerEvent('vln-gang:createGang', data)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    SetNuiFocus(false,false)
end)


RegisterNetEvent('vln-gang:loadStorage')
AddEventHandler('vln-gang:loadStorage', function()
    GatherStorageLocations()
end)

SceneTarget = function()
    local Cam = GetGameplayCamCoord()
    local handle = Citizen.InvokeNative(0x377906D8A31E5586, Cam, GetCoordsFromCam(10.0, Cam), -1, PlayerPedId(), 4)
    local _, Hit, Coords, _, Entity = GetShapeTestResult(handle)
    return Coords
end

GetCoordsFromCam = function(distance, coords)
    local rotation = GetGameplayCamRot()
    local adjustedRotation = vector3((math.pi / 180) * rotation.x, (math.pi / 180) * rotation.y, (math.pi / 180) * rotation.z)
    local direction = vector3(-math.sin(adjustedRotation[3]) * math.abs(math.cos(adjustedRotation[1])), math.cos(adjustedRotation[3]) * math.abs(math.cos(adjustedRotation[1])), math.sin(adjustedRotation[1]))
    return vector3(coords[1] + direction[1] * distance, coords[2] + direction[2] * distance, coords[3] + direction[3] * distance)
end



RegisterNUICallback('takepermission', function(data) 
    if data then
        TriggerServerEvent('vln-gang:TakePermission',data.storageId,data.id)
    end
end)

local laittaa = false

function PropPlacer(id)	
	laittaa = true
	while laittaa do
		Citizen.Wait(0)
		local PropPlacerGroupName  = CreateVarString(10, 'LITERAL_STRING', Translation.PlacerPropmt)
		PromptSetActiveGroupThisFrame(PromptPlacerGroup, PropPlacerGroupName)
		if PromptHasHoldModeCompleted(SetPrompt) then
            local pPos = GetEntityCoords(PlayerPedId())
			FreezeEntityPosition(PlayerPedId() , false)
			TriggerServerEvent("vln-gang:repositionStorage", id, pPos)
			break
		end
	end
end

RegisterNUICallback('repositionstorage', function(data, cb)
    local sid = data.id
    TriggerServerEvent('vln-gang:getStorageCoords',sid,false)
    cb({ success = true })
end)




RegisterNUICallback('givepermstorage', function(data, cb)
    local sid = data.id
    TriggerServerEvent('vln-gang:givepermstorage',sid,false)
    cb({ success = true })
end)

RegisterNUICallback('DestroyStorage', function(data, cb)
    local sid = data.id

    TriggerServerEvent('vln-gang:getStorageCoords',sid,true)
end)


RegisterNUICallback('acceptInvite', function(data, cb)
    local sid = data.gangId
    SetNuiFocus(false,false)
    TriggerServerEvent('vln-gang:GivePermission',sid)
end)

RegisterNUICallback('declineInvite', function(data, cb)
    local sid = data.id
    SetNuiFocus(false,false)
end)

RegisterNUICallback('exit', function() 
    SetNuiFocus(false, false)
    PlaySoundFrontend("NAV_LEFT", "PAUSE_MENU_SOUNDSET", true, 0)
end)

Citizen.CreateThread(function()
    while true do
        if Selected then
            TriggerServerEvent("vln-gang:PlayerJob")
        end
        Citizen.Wait(Config.JobCooldown)
    end
end)

RegisterNetEvent('vln-gang:SendInvite')
AddEventHandler('vln-gang:SendInvite', function(gangid,gangName)
    invited = true
    SendNUIMessage({
        type = 'invite',
        gangid = gangid,
        gangname = gangName,
    })
end)




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        
        if invited then
            if IsControlJustPressed(0, 0x8AAA0AD4) then
                SetNuiFocus(true, true) 
                invited = false 
            end
        else
            Citizen.Wait(500) 
        end
    end
end)



local closestStorage = nil
local closestDistance = 30 
local isNearby = false 


function PlayerHasPermissionOrLeader(playerId, gangId)
    local hasPermission = false
    local isLeader = false
    for _, gang in ipairs(gangData) do
        if gang.id == gangId then
            if gang.leaderId == playerId then
               
                isLeader = true
                hasPermission = true
            end
            if gang.permissions then
                local permissions = json.decode(gang.permissions) or {}
                for _, permission in ipairs(permissions) do
                    if permission.id == playerId then
                        hasPermission = true
                        break
                    end
                end
            end
        end
    end

    return hasPermission, isLeader
end

RegisterNUICallback('givemission', function(data, cb)
    local sid = data.id
    if playerGangId and CitizenID then
        local hasPermission, isLeader = PlayerHasPermissionOrLeader(CitizenID, playerGangId)
        if isLeader then

            TriggerServerEvent('vln-gang:GiveMission', playerGangId,sid)
        else
            print("You don't have permission to give orders.")
        end
    else
        print("Invalid usage or you are not in a gang.")
    end
end)

local gangMembers = {}
local gangMemberBlips = {} 

RegisterNetEvent('vln-gang:updateGangMembers', function(members)
    gangMembers = members 

    for id, memberData in pairs(gangMembers) do
        if memberData.coords then
            CreatePlayerBlipForGangMember(id, memberData.name, memberData.coords)
        end
    end
end)


RegisterCommand('برقيه', function(source, args, rawCommand)
    if playerGangId and CitizenID and args[1] then
        local hasPermission, isLeader = PlayerHasPermissionOrLeader(CitizenID, playerGangId)
        if isLeader then
            local orderMessage = table.concat(args, " ") 

            TriggerServerEvent('vln-gang:sendOrderMessage', playerGangId, orderMessage)
        else
            print("You don't have permission to give orders.")
        end
    else
        print("Invalid usage or you are not in a gang.")
    end
end)



RegisterNUICallback('loadMissions', function()
    if playerGangId and CitizenID then
        local hasPermission, isLeader = PlayerHasPermissionOrLeader(CitizenID, playerGangId)
        if isLeader then
            local missionsWithIDs = {}
            for id, mission in pairs(Config.Missions) do
                table.insert(missionsWithIDs, { id = id, mission = mission })
            end
            SendNUIMessage({
                type = 'loadMissions',
                missions = missionsWithIDs 
            })
            SetNuiFocus(true, true)
        else
            print("You don't have permission to give orders.")
        end
    else
        print("Invalid usage or you are not in a gang.")
    end
end)


RegisterNetEvent('vln-gang:receiveOrderMessage', function(orderMessage)
    SendNUIMessage({
        type = 'order',
        message = orderMessage,
    })
end)


Citizen.CreateThread(function()
    local lastWaypointCoords = nil 
    while true do
        Citizen.Wait(1000) 

        if playerGangId and CitizenID then
            if GangLeader and IsWaypointActive() then
                local wCoords = GetWaypointCoords()

                if not lastWaypointCoords or (lastWaypointCoords.x ~= wCoords.x or lastWaypointCoords.y ~= wCoords.y or lastWaypointCoords.z ~= wCoords.z) then
                    TriggerServerEvent('vln-gang:leaderSetWaypoint', wCoords.x, wCoords.y, wCoords.z, playerGangId)

                    lastWaypointCoords = wCoords
                end

                Citizen.Wait(5000)
            end
        else
            lastWaypointCoords = nil
            Citizen.Wait(5000)
        end
    end
end)

RegisterNetEvent('vln-gang:updateWaypoint')
AddEventHandler('vln-gang:updateWaypoint', function(x, y, z)
    RemoveGps()
    SetGps(x, y, z)
end)

function RemoveGps()
    ClearGpsMultiRoute()
end


function SetGps(x, y, z)
    local pl = GetEntityCoords(PlayerPedId())
    StartGpsMultiRoute(GetHashKey('COLOR_RED'), true, true)
    AddPointToGpsMultiRoute(pl.x, pl.y, pl.z)
    AddPointToGpsMultiRoute(x, y, z)
    SetGpsMultiRouteRender(true)
end

Citizen.CreateThread(function()
    while true do
        UpdatePlayerBlips() 
        Citizen.Wait(5000)
    end
end)

function UpdatePlayerBlips()
    DeleteAllPlayerBlips() 

    for id, member in pairs(gangMembers) do
        if member.coords then
            CreatePlayerBlipForGangMember(id, member.name, member.coords)
        end
    end
end

function CreatePlayerBlipForGangMember(playerId, playerName, coords)
    if gangMemberBlips[playerId] then
        RemoveBlip(gangMemberBlips[playerId])
    end

    local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, coords.x, coords.y, coords.z)
    SetBlipSprite(blip, 1481032477, 1) 
    SetBlipScale(blip, 1.0)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip, tostring(playerName))

    gangMemberBlips[playerId] = blip
end

function DeleteAllPlayerBlips()
    for playerId, blip in pairs(gangMemberBlips) do
        if DoesBlipExist(blip) then
            RemoveBlip(blip) 
        end
    end
    gangMemberBlips = {}
end

local createdBlips = {} 

function CreateGangBlipsForPlayer(playerId)
    for _, gang in ipairs(gangData) do
        if not createdBlips[gang.id] and gang.location then
            local x, y, z = string.match(gang.location, "vec3%(([%d%.%-]+), ([%d%.%-]+), ([%d%.%-]+)%)")
            if x and y and z then
                local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, tonumber(x), tonumber(y), tonumber(z))
                SetBlipSprite(blip, tonumber(gang.texture), 1)
                SetBlipScale(blip, 1.0)
                Citizen.InvokeNative(0x9CB1A1623062F402, blip, tostring(gang.blipName))

                local radiusBlip = Citizen.InvokeNative(0x45F13B7E0A15C880, 2208833468, tonumber(x), tonumber(y), tonumber(z), Config.RadiusSize) 
                Citizen.InvokeNative(0x662D364ABF16DE2F, radiusBlip, GetHashKey(gang.radiustext))

                createdBlips[gang.id] = { normal = blip, radius = radiusBlip }
            end
        end
    end
end

function RemoveBlipsByGangId(gangId)
    if createdBlips[gangId] then
        if createdBlips[gangId].normal then
            RemoveBlip(createdBlips[gangId].normal)
        end

        if createdBlips[gangId].radius then
            RemoveBlip(createdBlips[gangId].radius)
        end

        createdBlips[gangId] = nil
    end
end

RegisterNetEvent('vln-gang:removeBlips')
AddEventHandler('vln-gang:removeBlips', function(gangId)
    RemoveBlipsByGangId(gangId)
end)

function GatherStorageLocations()
    ClientRPC.Callback.TriggerAsync('vln-gang:getData', function(result)
        if result then
            gangData = {}
            local hasPermission, isLeader = false, false

            for _, row in ipairs(result) do
                gangData[#gangData + 1] = {
                    id = row.id,
                    gangName = row.gang_name,
                    permissions = row.permissions,
                    leaderId = row.leader_id,
                    characterId = row.character_id,
                    location = row.location, 
                    blipName = row.blip_name,
                    texture = row.selected_texture,
                    radiustext = row.radiustexture,
                }

                if row.id then
                    hasPermission, isLeader = PlayerHasPermissionOrLeader(CitizenID, row.id)
                    if (hasPermission or isLeader) then
                        TriggerServerEvent('vln-gang:requestGangMembers', row.id)
                        playerGangId = row.id
                        GangLeader = isLeader
                    end
                end
            end
            
            if CitizenID then
                CreateGangBlipsForPlayer(CitizenID)
            end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        if Selected then
            TriggerServerEvent("vln-gang:PlayerJob")

            Citizen.Wait(20000)
            if CitizenID then
                GatherStorageLocations()
            end
        end
        Citizen.Wait(60000) 
    end
end)

RegisterNUICallback('CheckUpgrade', function(data, cb)
    for k, v in pairs(Config.UpgradeItems) do
        local item = Config.UpgradeItems[k]
        SendNUIMessage({
            type = "upgrade",
            name = item.name,
            label = item.label,
            quantity = item.quantity,
            image = Config.ImageLocation .. item.name .. ".png",
        })
    end
end)




RegisterNUICallback('upgradeConfirmed', function(data, cb)
    local sid = data.id
    TriggerServerEvent('vln-gang:UpgradeInv',sid)
end)

function OpenStorage(closestPoster)
    SetNuiFocus(true,true)
    ClientRPC.Callback.TriggerAsync('vln-gang:getWorkers', function(workers)
        SendNUIMessage({
            type = "manage",
            name = closestPoster.id..'-'..closestPoster.gangName,
            id = closestPoster.id,
            permissions = workers,
            size = closestPoster.storagesize,
        })
    end, closestPoster.id)
end


local function parseCoordinates(coordStr)
    local x, y, z = string.match(coordStr, "%((-?%d+%.?%d*), (-?%d+%.?%d*), (-?%d+%.?%d*)%)")
    if x and y and z then
        return tonumber(x), tonumber(y), tonumber(z)
    else
        return nil, nil, nil
    end
end

RegisterNetEvent("vln-gang:receiveStorageCoords")
AddEventHandler("vln-gang:receiveStorageCoords", function(storagecoord)
    RemoveStorageFromStorageData(storagecoord)
end)


local missionPool = {} 

RegisterNetEvent("vln-gang:sendmission")
AddEventHandler("vln-gang:sendmission", function(missionId)
    local mission = Config.Missions[tonumber(missionId)]

    if mission then
        local x, y, z = table.unpack(mission.Location)

        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, tonumber(x), tonumber(y), tonumber(z))

        SetBlipSprite(blip, tonumber(mission.BlipSprite), 1)  
        SetBlipScale(blip, 1.0)                               
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, tostring(mission.blipName))  

        missionPool[missionId] = { x = x, y = y, z = z, blip = blip, missionText = mission.MissionText }

        TriggerEvent('chat:addMessage', {
            template = '<div class="chat-message me"><b> &nbsp;<i  style="color: #806881" class="fas fa-reply"></i> <span<span style="color: #806881">[Mission]</span></b> <span> {1}</span></div>',
            args = { _source , mission.MissionText}
        })

    else
        print("Mission not found: " .. missionId)
    end
end)

function removeMissionBlip(missionId)
    if missionPool[missionId] and missionPool[missionId].blip then
        RemoveBlip(missionPool[missionId].blip)
        missionPool[missionId] = nil
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = PlayerPedId()
        local playerPos = GetEntityCoords(playerPed)

        for missionId, missionInfo in pairs(missionPool) do
            local missionPos = vector3(missionInfo.x, missionInfo.y, missionInfo.z)
            local distance = #(playerPos - missionPos)

            if distance < 5.0 then
                DrawText3Ds(missionPos.x, missionPos.y, missionPos.z + 1.0, "[Press G to complete mission]")

                if IsControlJustPressed(0, 0x760A9C6F) then
                    TriggerServerEvent("vln-gang:completeMission", missionId,playerGangId)

                    removeMissionBlip(missionId)

                    TriggerEvent('chat:addMessage', {
                        template = '<div class="chat-message me"><b> &nbsp;<i style="color: #806881" class="fas fa-check"></i> <span style="color: #806881">[Mission]</span></b> <span>Your mission has been completed!</span></div>',
                        args = { _source }
                    })

                    missionPool[missionId] = nil
                end
            end
        end
    end
end)

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoord())  
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    if onScreen then
        SetTextScale(0.30, 0.30)
        SetTextFontForCurrentCommand(1)
        SetTextColor(255, 255, 255, 215)
        SetTextCentre(1)
        DisplayText(str, _x, _y)
        local factor = (string.len(text)) / 225
        DrawSprite("feeds", "hud_menu_4a", _x, _y + 0.0125, 0.015 + factor, 0.03, 0.1, 35, 35, 35, 190, 0)
    end
end

RegisterNetEvent("vln-gang:MoveStorage")
AddEventHandler("vln-gang:MoveStorage", function(id)
    PropPlacer(id)
end)

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end


Citizen.CreateThread(function()
    while true do
        if Selected then
            local playerCoords = GetEntityCoords(PlayerPedId())
            local storagesInRange = {}
            local closestStorage = nil
            local closestStorageDistance = 30.5

            if gangData then
                for _, storage in ipairs(gangData) do
                    local locationStr = storage.location
                    if locationStr then
                        local x, y, z = parseCoordinates(locationStr)
                        if x and y and z then
                            local distance = GetDistanceBetweenCoords(playerCoords, x, y, z, true)
                            if distance <= 30.0 then 
                                table.insert(storagesInRange, storage)
                                if not closestStorage or distance < closestStorageDistance then
                                    closestStorage = storage
                                    closestStorageDistance = distance
                                end
                            end
                        end
                    end
                end
            end
            if closestStorage and closestStorageDistance < Config.Distance and closestStorage.leaderId == CitizenID then
                local label = CreateVarString(10, 'LITERAL_STRING', Translation.OpenStorage .. '~o~' .. closestStorage.gangName)
                PromptSetActiveGroupThisFrame(prompts, label)
                

                if PromptHasStandardModeCompleted(storagePrompt) then
                    if closestStorage.leaderId == CitizenID then
                        SetNuiFocus(true, true)
                        OpenStorage(closestStorage)
                    end
                end
            end

            Citizen.Wait(0)
        else
            Citizen.Wait(2000)
        end
    end
end)

local createdPapers = {}  
local createdPaperLocations = {} 
local createdPapersList = {}


function DeletePaperAndData(paperKey)
    local entityHandle = createdPapers[paperKey]
    if entityHandle and DoesEntityExist(entityHandle) then
        SetEntityAsNoLongerNeeded(entityHandle)
        createdPapers[paperKey] = nil

        if createdPaperLocations[paperKey] then
            createdPaperLocations[paperKey] = nil
        end

        for i, key in ipairs(createdPapersList) do
            if key == paperKey then
                table.remove(createdPapersList, i)
                break
            end
        end
    end
end


function RemoveStorageFromStorageData(storagecoord)
    for i, storage in ipairs(gangData) do
        if storage.location == storagecoord then
            table.remove(gangData, i)
            break
        end
    end
end

function removeAllBlips()
    for gangId, blips in pairs(createdBlips) do
        if blips.normal then
            RemoveBlip(blips.normal) 
        end
        if blips.radius then
            RemoveBlip(blips.radius) 
        end
    end
    createdBlips = {}

    for missionId, missionInfo in pairs(missionPool) do
        RemoveBlip(missionInfo.blip)
    end
    missionPool = {}
end

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then
        return
    end

    for _, paperKey in ipairs(createdPapersList) do
        DeletePaperAndData(paperKey)
    end
    createdPapersList = {}

    removeAllBlips()
    DeleteAllPlayerBlips()
end)

Citizen.CreateThread(function()
    if Config.CommandSuggestion then
        TriggerEvent("chat:addSuggestion", '/'..Config.DeleteCommand, Config.CommandSuggestion.commanddesc, {
            {name = Config.CommandSuggestion.id, help = Config.CommandSuggestion.iddesc},
            {name = Config.CommandSuggestion.conf, help = Config.CommandSuggestion.confdesc},
        })
    end
end)


