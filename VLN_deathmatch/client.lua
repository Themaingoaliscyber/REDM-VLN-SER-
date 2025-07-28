local weaponHash1 = "WEAPON_SNIPERRIFLE_CARCANO" -- السلاح الأول
local weaponHash2 = "WEAPON_PISTOL_M1899" -- السلاح الثاني
local isInZone = false
local killCount = 0
local deathCount = 0
local kdRatio = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for _, v in pairs(Config.Locations) do
            local distance = #(playerCoords - vector3(v.coords.x, v.coords.y, v.coords.z))

            if distance < v.radius then
                if not isInZone then
                    -- عرض الإحصائيات عند دخول الزون
                    TriggerEvent('displayKillfeed', true)
                    isInZone = true
                end
            else
                if isInZone then
                    -- إخفاء الإحصائيات عند الخروج من الزون
                    TriggerEvent('displayKillfeed', false)
                    isInZone = false
                end
            end
        end
    end
end)


-- تعريف دالة لعرض النصوص
function DrawTxt(text, x, y, scale)
    SetTextScale(scale, scale)
    SetTextColor(255, 255, 255, 255)  -- تحديد اللون الأبيض
    SetTextCentre(0)  -- محاذاة النص في الوسط
    SetTextDropshadow(1, 0, 0, 0, 255)  -- إضافة تأثير الظل للنص
    SetTextFontForCurrentCommand(1)  -- تحديد نوع الخط (يمكن تغييره حسب الحاجة)
    DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)  -- عرض النص
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
            if isInZone then
            DrawTxt("VLN DeathMatch", 0.02, 0.01, 0.6)             -- عرض العنوان فوق الإحصائيات

            DrawTxt("Kill: " .. killCount, 0.02, 0.05, 0.5)
            DrawTxt("Death: " .. deathCount, 0.02, 0.08, 0.5)
            DrawTxt("KD: " .. string.format("%.2f", kdRatio), 0.02, 0.11, 0.5)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPlayerDead(PlayerId()) then
            for _, v in pairs(Config.Locations) do
                if #(GetEntityCoords(PlayerPedId()) - vector3(v.coords.x, v.coords.y, v.coords.z)) < v.radius then
                    Citizen.Wait(Config.TimeBeforeRespawn)
                    local loc = math.random(#v.respawn)
                    SetEntityCoords(PlayerPedId(), v.respawn[loc].x, v.respawn[loc].y, v.respawn[loc].z)
                    TriggerEvent("vorp_core:Client:OnPlayerRevive")

                    -- استرجاع الصحة
                    SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))

                    -- تحديث الإحصائيات
                    deathCount = deathCount + 1
                    if deathCount > 0 then
                        kdRatio = killCount / deathCount
                    else
                        kdRatio = killCount
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    local isInZone = false
    local givenWeapons = {}
    local originalWeapons = {}
    local originalAmmo = {}

    
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        
        for _, v in pairs(Config.Locations) do
            local distance = #(playerCoords - vector3(v.coords.x, v.coords.y, v.coords.z))
            
            if distance < v.radius then
                if not isInZone then
                    -- حفظ الأسلحة الأصلية والذخيرة قبل إزالتها وإجبار اللاعب على إخفائها
                    for _, weapon in ipairs(GetAllPedWeapons(playerPed)) do
                        table.insert(originalWeapons, weapon)
                        originalAmmo[weapon] = GetAmmoInPedWeapon(playerPed, GetHashKey(weapon))
                    end                    
                    -- إعطاء الأسلحة داخل الزون مع تفعيل الذخيرة اللانهائية
                    GiveWeaponToPed(playerPed, GetHashKey(weaponHash1), 0, false, true)
                    SetPedInfiniteAmmo(playerPed, true, GetHashKey(weaponHash1))
                    GiveWeaponToPed(playerPed, GetHashKey(weaponHash2), 0, false, true)
                    SetPedInfiniteAmmo(playerPed, true, GetHashKey(weaponHash2))
                    givenWeapons = {weaponHash1, weaponHash2}
                    
                    -- منع استخدام الأسلحة الأصلية
                    isInZone = true
                end
            else
                if isInZone then
                    -- إزالة الأسلحة المكتسبة داخل الزون وتعطيل الذخيرة اللانهائية
                    for _, weapon in ipairs(givenWeapons) do
                        SetPedInfiniteAmmo(playerPed, false, GetHashKey(weapon))
                        SetPedAmmo(playerPed, GetHashKey(weapon), 0)
                        RemoveWeaponFromPed(playerPed, GetHashKey(weapon))
                    end
                    
                    -- إعادة الأسلحة الأصلية والذخيرة المحفوظة
                    for _, weapon in ipairs(originalWeapons) do
                        GiveWeaponToPed(playerPed, GetHashKey(weapon), originalAmmo[weapon] or 0, false, false)
                    end
                    
                    
                    originalWeapons = {}
                    givenWeapons = {}
                    originalAmmo = {}
                    isInZone = false
                end
            end
        end
    end
end)


-- وظيفة للحصول على جميع أسلحة اللاعب
function GetAllPedWeapons(ped)
    local weapons = {}
    for i = 0, 60 do
        local weaponHash = GetWeapontypeGroup(i)
        if HasPedGotWeapon(ped, weaponHash, false) then
            table.insert(weapons, weaponHash)
        end
    end
    return weapons
end

-- تتبع القتل وزيادة العدادات
RegisterNetEvent('playerKilled')
AddEventHandler('playerKilled', function(killerPed)
    if killerPed == PlayerPedId() then
        killCount = killCount + 1
        kdRatio = killCount / deathCount
    end
end)

-- إعادة إحياء اللاعب الذي قتل داخل الزون
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for _, v in pairs(Config.Locations) do
            local distance = #(playerCoords - vector3(v.coords.x, v.coords.y, v.coords.z))

            if distance < v.radius then
                if IsPlayerDead(PlayerId()) then
                    -- إعادة إحياء اللاعب في مكان عشوائي
                    Citizen.Wait(Config.TimeBeforeRespawn)
                    local loc = math.random(#v.respawn)
                    SetEntityCoords(PlayerPedId(), v.respawn[loc].x, v.respawn[loc].y, v.respawn[loc].z)
                    TriggerEvent("vorp_core:Client:OnPlayerRevive")

                    -- استرجاع الصحة
                    SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
                end
            end
        end
    end
end)

-- تعطيل زر الحقيبة داخل الزون
CreateThread(function()
    while true do
        Citizen.Wait(5)
        if isInZone then
            -- منع فتح الحقيبة داخل الزون
            DisableControlAction(0, 0xC1989F95, true)  
        else
            -- إعادة تمكين الحقيبة بعد الخروج من الزون
            EnableControlAction(0, 0xC1989F95, true)
        end
    end
end)