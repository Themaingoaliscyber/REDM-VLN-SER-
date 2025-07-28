local myCreatedPeds = {}
local myCreatedBlips = {}
local myCreatedPedHandles = {}


function LoadModel(npcModel)
    local model = (npcModel)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
end

local function IsStoreClosed(storeConfig)
    local hour = GetClockHours()
    if hour >= storeConfig.StoreClose or hour < storeConfig.StoreOpen then
       return "closed"
    elseif hour >= storeConfig.StoreOpen then
       return "opened"
    end
    return "none"
end



Citizen.CreateThread(function()
    for k,v in pairs(Config.CraftLocations) do
        if v.blip then
            local blipinfo = v
            local blip2 = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(blip2, v.sprite, 1)
            SetBlipScale(blip2, 1.0)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip2, blipinfo.blipname)
            myCreatedBlips[#myCreatedBlips + 1] = blip2
        end
    end
end)

function CreateCloseBlip()
    for k,v in pairs(Config.CraftLocations) do
        if v.blip then
            local blipinfo = v
            local blip2 = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            Citizen.InvokeNative(0x662D364ABF16DE2F, blip2, GetHashKey(blipinfo.blipColorClosed))
            SetBlipSprite(blip2, Config.Blip.sprite, 1)
            SetBlipScale(blip2, Config.Blip.scale)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip2, blipinfo.blipnameClosed)
            myCreatedBlips[#myCreatedBlips + 1] = blip2
        end
    end
end

function CreateShopPed(model, coords, heading)
    LoadModel(model)
    local pedHandle = CreatePed(model, coords.x, coords.y, coords.z, heading, false, true, true, true)
    Citizen.InvokeNative(0x283978A15512B2FE, pedHandle, true) 
    SetEntityCanBeDamaged(pedHandle, false)
    SetEntityInvincible(pedHandle, true)
    Citizen.Wait(500)
    FreezeEntityPosition(pedHandle, true)
    SetBlockingOfNonTemporaryEvents(pedHandle, true)
    PlaceEntityOnGroundProperly(pedHandle, true)
    return pedHandle 
end

function CleanUpAndReset(Deletenpc)
    for _, pedHandle in ipairs(myCreatedPedHandles) do
        if DoesEntityExist(pedHandle) then
            if Deletenpc then
                DeletePed(pedHandle)
                DeleteEntity(pedHandle)
            end
            SetEntityAsNoLongerNeeded(pedHandle)
        end
    end

    for _, blip2 in ipairs(myCreatedBlips) do
        if DoesBlipExist(blip2) then
            RemoveBlip(blip2)
            TriggerServerEvent('qq-seller:removeblip',blip2)
        end
    end

    myCreatedPedHandles = {}  
    myCreatedBlips = {}
end

local lastCleanupTime = 0 
local cleanupCooldown = 5000 

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if GetGameTimer() - lastCleanupTime > cleanupCooldown then
            local player = PlayerPedId()
            local coords = GetEntityCoords(player)
            local sleep = true 

            for _, shop in pairs(Config.CraftLocations) do 
                sleep = false
                if shop.ped then
                    local shopKey = tostring(shop) 
                    local pedCoords = shop.pedCoords
                    local distance = Vdist(coords.x, coords.y, coords.z, pedCoords.x, pedCoords.y, pedCoords.z)

                    if distance <= 15.0 then
                        if not myCreatedPeds[shopKey] then
                            shop.pedHandle = CreateShopPed(shop.pedModel, shop.pedCoords, shop.pedHeading)
                            table.insert(myCreatedPedHandles, shop.pedHandle)
                            myCreatedPeds[shopKey] = true
                        end
                    elseif myCreatedPeds[shopKey] then
                        DeletePed(shop.pedHandle)
                        DeleteEntity(shop.pedHandle)
                        myCreatedPeds[shopKey] = nil
                    end
                end
            end

            if sleep then 
                Citizen.Wait(500)
            end
            lastCleanupTime = GetGameTimer()
        else
            Citizen.Wait(cleanupCooldown - (GetGameTimer() - lastCleanupTime))
        end
    end
end)


AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        -- Cleanup peds
        for _, pedHandle in ipairs(myCreatedPedHandles) do
            if DoesEntityExist(pedHandle) then
                DeletePed(pedHandle)
                DeleteEntity(pedHandle)
                SetEntityAsNoLongerNeeded(pedHandle)
            end
        end

        -- Cleanup blips
        for _, blip2 in ipairs(myCreatedBlips) do
            if DoesBlipExist(blip2) then
                RemoveBlip(blip2)
            end
        end

        -- Clear the lists
        myCreatedPedHandles = {}
        myCreatedBlips = {}
    end
end)