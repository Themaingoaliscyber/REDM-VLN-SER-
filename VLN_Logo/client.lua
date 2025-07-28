-- Made by FAXES, Based off HRC
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()
    local display = true

    TriggerEvent('logo:display', true)
  end)
end)

RegisterNetEvent('logo:display')
AddEventHandler('logo:display', function(value)
  SendNUIMessage({
    type = "logo",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

---ragdoll

local ragdoll = false
keys = {
    -- ["L"] = 0x80F28E95,
}
function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(10)
        if whenKeyJustPressed(keys["L"]) then
            if not ragdoll then 
                ragdoll = true
                SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0) 

            else
                ragdoll = false
            end
            Citizen.Wait(200)
        end  
    end
end) 

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(10)
        if ragdoll then 
            ResetPedRagdollTimer(PlayerPedId())
        end
    end
end)