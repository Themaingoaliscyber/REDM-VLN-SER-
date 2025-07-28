

local function toggleNuiFrame(shouldShow)
    PAUSEMENU.state = shouldShow
    SetNuiFocus(shouldShow, shouldShow)
    SendReactMessage('setVisible', shouldShow)
  end
  
  RegisterCommand('boiler', function()
    toggleNuiFrame(true)
    print('Show NUI frame')
  end)
  
RegisterNUICallback('hideFrame', function()
  PAUSEMENU.state = not PAUSEMENU.state
  SetNuiFocus(PAUSEMENU.state, PAUSEMENU.state)
  SendReactMessage('setVisible', PAUSEMENU.state)
  print('Hide NUI frame')
end)

local function OpenPauseMenuUI()
  if not PAUSEMENU.pauseMenuLoaded then
    SendReactMessage("setConfig", Config)
    SendReactMessage("setLocale", Locales[Config.Locale])
    PAUSEMENU.pauseMenuLoaded = true
  end
  PAUSEMENU.state = not PAUSEMENU.state
  local dailygiftData = TriggerCallback("CAS:Server:ReturnDailyGiftData")
  SendReactMessage("setVisible", {
    playerData = PAUSEMENU.playerData,
    dailygiftData = dailygiftData
  })
  SetNuiFocus(PAUSEMENU.state, PAUSEMENU.state)
end

RegisterNUICallback("disconnectPlayer", function(data,cb)
  TriggerServerEvent("disconnect")
end)

RegisterNUICallback("makeRDRAction", function(data,cb)
  toggleNuiFrame(false)
  if data == "map" then
      Citizen.InvokeNative(0xC1BCF31E975B3195, GetHashKey('map'), true, -1)
  elseif data == "settings" then
      Citizen.InvokeNative(0xC1BCF31E975B3195, GetHashKey('settings_menu'), true, -1)
  end

  cb(true)
end)

RegisterNUICallback("changeLanguage", function(data,cb)
  Config.Locale = data.newlocale
  SendReactMessage("setLocale", Locales[data.newlocale])
end)


CreateThread(function()
  while true do 
      if Citizen.InvokeNative(0x25B7A0206BDFAC76,(GetHashKey('pause_menu'))) then
          Citizen.InvokeNative(0x818C6CA9B659E8EC,'pause_menu')
          OpenPauseMenuUI()
      end
      Wait(0)
  end
end)
  
RegisterNUICallback("logout", function(data,cb)
  if PAUSEMENU.framework == "vorp" then
    TriggerServerEvent("vorp_character:server:GoToSelectionMenu", GetPlayerServerId(PlayerId()))
  else
    TriggerServerEvent("RSGCore:Server:OnPlayerLoaded")
  end
  toggleNuiFrame(false)

end)

RegisterNetEvent("cas:client:setPlayerData", function(data)
  PAUSEMENU.playerData.playerPhoto = data.playerPhoto
  PAUSEMENU.playerData.playerName = data.playerName
end)


RegisterNUICallback("cas:client:collectDailygift", function(data,cb)
  local cback = TriggerCallback("cas:server:CollectDailyGift", data)
  cb(cback)
end)