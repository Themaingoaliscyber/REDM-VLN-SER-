--blips custom and to you can do colors
--for choose blip do you want from here https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips
--the colors for the blips
--[[
    BLIP_MODIFIER_DEBUG_PINK
    BLIP_MODIFIER_DEBUG_RED
    BLIP_MODIFIER_DEBUG_BLUE
    BLIP_MODIFIER_DEBUG_GREEN
    BLIP_MODIFIER_DEBUG_PURPLE PURPLE
    ]]

--[-1]

-----------------------------
 --- مراكز رجال القانون ---
 ----------------------------
local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "Valentine Sheriff Office" --the name for the blip
local blip_coords = {x = -278.12, y = 809.63, z = 118.88} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "BlackWater Sheriff Office" --the name for the blip
local blip_coords = {x = -763.9, y = -1269.27, z = 43.54} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "SaintDenis Sheriff Office" --the name for the blip
local blip_coords = {x = 2500.74, y = -1309.29, z = 48.46} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "Annesburg Sheriff Office" --the name for the blip
local blip_coords = {x = 2908.35, y = 1311.2, z = 44.44} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "Rhodes Sheriff Office" --the name for the blip
local blip_coords = {x = 1360.09, y = -1302.0, z = 77.27} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "ARMADILLO Sheriff Office" --the name for the blip
local blip_coords = {x = -3621.28, y = -2602.95, z = -13.84} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "TUMBLEWEES Sheriff Office" --the name for the blip
local blip_coords = {x = -5530.92, y = -2929.14, z = -0.33} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "STRAWBERRY Sheriff Office" --the name for the blip
local blip_coords = {x = -1811.22, y = -351.72, z = 164.16} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_sheriff") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {}
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "Company call we do not reach" --the name for the blip
local blip_coords = {x = 2844.79, y = -1403.74, z = 45.47} --the cords for the blip
local blip_hash = GetHashKey("blip_mg_poker") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

-----------------------------
 --- مراكز رجال القانون ---
 ---------------------------- {x = 2401.33, y = -1088.29, z = 46.96}

 -----------------------------
 --- المباني الحكومية ---
 ---------------------------- 

 local created_blips = {} --- القصر الرئاسي
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "General Presidency" --the name for the blip
local blip_coords = {x = 2401.33, y = -1088.29, z = 46.96} --the cords for the blip
local blip_hash = GetHashKey("blip_ambient_king") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

local created_blips = {} --- مجلس الحكم
Citizen.CreateThread(function()
    Citizen.Wait(5000)

local blip_name = "Governing Council" --the name for the blip
local blip_coords = {x = 2523.99, y = -1202.25, z = 53.18} --the cords for the blip
local blip_hash = GetHashKey("blip_mp_mission_area_decision") --the blip do you wnat form the wepsite in the top
local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BRONZE") --but the color in here
local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)


    -- BLIP_ADD_MODIFIER:
    Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
    SetBlipSprite(blip_id, blip_hash, 0)
    SetBlipScale(blip, 0,5)
    -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
    Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)

    created_blips[blip_id] = true   -- table for removing blips if needed

end)

 -----------------------------
 --- المباني الحكومية ---
 ---------------------------- 

 local created_blips = {} -- قصر ابو نبيل 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "ABU NABIL GR FAMILY CASTLE" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 1010.3, y = -1772.21, z = 48.0} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر ابو عجوه روتشيلد
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "ABA 3JWA RC FAMILY CASTLE" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 1765.29, y = -1363.67, z = 45.28} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر ابو دغش الكلينتون
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "DAGHASH CL FAMILY CASTLE" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -1642.46, y = -1362.43, z = 84.45} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر  FOR SEAL
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "FOR SEAL FAMILY CASTLE" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 1462.56, y = 315.44, z = 90.67} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر  سع القريش
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "Fort" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -205.41, y = 203.82, z = 93.83} --the cords for the blip
 local blip_hash = GetHashKey("blip_ambient_king") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_RED") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر  البنات
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "Princess Castle" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 2476.37, y = -1229.89, z = 62.43} --the cords for the blip
 local blip_hash = GetHashKey("blip_ambient_king") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_PINK") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- قصر  FOR SEAL
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "COLOMBUS MANSION FAMILY CASTLE" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -2321.6606, y = -2401.2178, z = 63.2682} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_BLUE") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

  -----------------------------
 --- البيوت ---
 ---------------------------- 

 local created_blips = {} -- بيت فوق ارمدلو 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "ABA ATAB CL HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -3954.17, y = -2138.19, z = 10.78} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- بيت يمين ساندنس فوق  عند السمك  
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "AL3RAB HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 2067.85, y = -851.32, z = 46.91} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- بيت يمين ساندنس فوق  عند السمك  
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "ALWALID HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 2612.62, y = -763.23, z = 43.39} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- بيت APACHE 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "APACHE TRIBES" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -4782.08, y = -2722.57, z = -13.52} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_RED") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- بيت High court 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "High court HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -611.68, y = -28.61, z = 86.49} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 
 local created_blips = {} -- بيت JACOB BLACK 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "JACOB BLACK HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 1117.9, y = 490.59, z = 98.58} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- بيت JACOB BLACK 
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "ABU UWYIAD CARTEL HOME" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = 777.1822, y = 848.1939, z = 118.6587} --the cords for the blip
 local blip_hash = GetHashKey("blip_event_castor") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)

 local created_blips = {} -- WeedPlants
 Citizen.CreateThread(function()
     Citizen.Wait(5000)
 
 local blip_name = "Weed Plant" --the name for the blip {x =-9.47, y = -1138.56, z = 48.14}
 local blip_coords = {x = -444.34, y = -1001.72, z = 41.81} --the cords for the blip
 local blip_hash = GetHashKey("blip_plant") --the blip do you wnat form the wepsite in the top
 local blip_modifier_hash = GetHashKey("BLIP_MODIFIER_DEBUG_GREEN") --but the color in here
 local blip_id = Citizen.InvokeNative(0x554D9D53F696D002, GetHashKey("BLIP_STYLE_SHOP"), blip_coords.x, blip_coords.y, blip_coords.z)
 
 
     -- BLIP_ADD_MODIFIER:
     Citizen.InvokeNative(0x662D364ABF16DE2F, blip_id, blip_modifier_hash)
     SetBlipSprite(blip_id, blip_hash, 0)
     SetBlipScale(blip, 0,5)
     -- _SET_BLIP_NAME_FROM_PLAYER_STRING:
     Citizen.InvokeNative(0x9CB1A1623062F402, blip_id, blip_name)
 
     created_blips[blip_id] = true   -- table for removing blips if needed
 
 end)