local VORPcore = {}
local jobname = nil
local appready = false
local isMusicPaused = false
local xSound = exports.xsound


TriggerEvent("getCore", function(core)
    VORPcore = core
end)


AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    TriggerEvent('vln-gaudioplayer:objectspawn')
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function()
    appready = true
end)



RegisterNetEvent('vln-gaudioplayer:OpenUi')
AddEventHandler('vln-gaudioplayer:OpenUi', function()
    SetNuiFocus(true, true)
    SendNUIMessage({ active = true })
end)



RegisterNetEvent('vln-gaudioplayer:clientPlaySong')
AddEventHandler('vln-gaudioplayer:clientPlaySong', function(songLink)
    playSong(songLink)
end)

RegisterNetEvent('vln-gaudioplayer:clientStartStop')
AddEventHandler('vln-gaudioplayer:clientStartStop', function()
    togglePlayPause()
end)

RegisterNetEvent('vln-gaudioplayer:clientVolumeChange')
AddEventHandler('vln-gaudioplayer:clientVolumeChange', function(direction)
    changeVolume(direction)
end)

function playSong(songLink)
    local playerPed = PlayerPedId()
    xSound:PlayUrl("GlobalSong", songLink, 0.5, false)
    isMusicPaused = false
end

function togglePlayPause()
    if xSound:soundExists("GlobalSong") then
        if isMusicPaused then
            xSound:Resume("GlobalSong")
        else
            xSound:Pause("GlobalSong")
        end
        isMusicPaused = not isMusicPaused
    end
end

function changeVolume(volume)
    if xSound:soundExists("GlobalSong") then
        local newVolume = math.max(0.0, math.min(volume, 1.0))
        xSound:setVolume("GlobalSong", newVolume)
    end
end

RegisterNUICallback('playNewSong', function(data, cb)
    TriggerServerEvent('vln-gaudioplayer:syncPlaySong', data.link)
end)

RegisterNUICallback('togglePlaystate', function(data, cb)
    TriggerServerEvent('vln-gaudioplayer:syncStartStop')
end)

RegisterNUICallback('volumeChange', function(data, cb)
    TriggerServerEvent('vln-gaudioplayer:syncVolumeChange', data.volume)
end)

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    if xSound:soundExists("GlobalSong") then
        xSound:Destroy("GlobalSong")
    end
end)

