--@ DVR Petrole JOB @NO EDIT @NO SALE
local jobs = false
local RecoltGroup = GetRandomIntInRange(0, 0xffffff)
local TraitementGroup = GetRandomIntInRange(0, 0xffffff)
local FabricationGroup = GetRandomIntInRange(0, 0xffffff)
local SellGroup = GetRandomIntInRange(0, 0xffffff)
local RecoltPetrole
local TraitementPetrole
local FabricationPetrole
local SellPetrole
local dict = "amb_work@world_human_repair@high@oilcan@male_b@idle_a"

RegisterNetEvent('Ciudad_Farm:startTimer')
AddEventHandler('Ciudad_Farm:startTimer', function()
	local timer = 20

	Citizen.CreateThread(function()
		while timer > 0 and Petrole do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		while Petrole do
			Citizen.Wait(5)
            if Config.DrawTxt then
                DrawTxt("Recojida en curso " ..timer.. ' segundos', 0.48, 0.86, 0.3, 0.3, true, 255, 255, 255, 255, true)
            else
                TriggerEvent('vorp:TipBottom', "~e~التجميع قيد التقدم " ..timer.. ' segundos', 3000)
            end
		end
	end)
end)

RegisterNetEvent('Ciudad_Farm:startTimerenballage')
AddEventHandler('Ciudad_Farm:startTimerenballage', function()
	local timer = 10

	Citizen.CreateThread(function()
		while timer > 0 and PetroleEmballage do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		while PetroleEmballage do
			Citizen.Wait(5)
            if Config.DrawTxt then
                DrawTxt("Empaquetando Saco " ..timer.. ' segundos', 0.48, 0.86, 0.3, 0.3, true, 255, 255, 255, 255, true)
            else
                TriggerEvent('vorp:TipBottom', "~e~كيس التعبئة" ..timer.. ' segundos', 3000)
            end
		end
	end)
end)


local function RecoltPetrolePrompt()
    Citizen.CreateThread(function()
        local str ="Cosecha de Trigo"
        local wait = 0
        RecoltPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(RecoltPetrole, 0xD9D0E1C0)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(RecoltPetrole, str)
        PromptSetEnabled(RecoltPetrole, true)
        PromptSetVisible(RecoltPetrole, true)
        PromptSetHoldMode(RecoltPetrole, true)
        PromptSetGroup(RecoltPetrole, RecoltGroup)
        PromptRegisterEnd(RecoltPetrole)
    end)
end

local function RecoltPetroleTraitementPrompt()
    Citizen.CreateThread(function()
        local str ="Tratar Trigo"
        local wait = 0
        TraitementPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(TraitementPetrole, 0xD9D0E1C0)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(TraitementPetrole, str)
        PromptSetEnabled(TraitementPetrole, true)
        PromptSetVisible(TraitementPetrole, true)
        PromptSetHoldMode(TraitementPetrole, true)
        PromptSetGroup(TraitementPetrole, TraitementGroup)
        PromptRegisterEnd(TraitementPetrole)
    end)
end

local function RecoltPetroleFabricPrompt()
    Citizen.CreateThread(function()
        local str ="Poner Trigo en Sacos"
        local wait = 0
        FabricationPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(FabricationPetrole, 0xD9D0E1C0)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(FabricationPetrole, str)
        PromptSetEnabled(FabricationPetrole, true)
        PromptSetVisible(FabricationPetrole, true)
        PromptSetHoldMode(FabricationPetrole, true)
        PromptSetGroup(FabricationPetrole, FabricationGroup)
        PromptRegisterEnd(FabricationPetrole)
    end)
end

local function RecoltPetroleSellPrompt()
    Citizen.CreateThread(function()
        local str ="Vender Saco Trigo"
        local wait = 0
        SellPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(SellPetrole, 0xD9D0E1C0)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(SellPetrole, str)
        PromptSetEnabled(SellPetrole, true)
        PromptSetVisible(SellPetrole, true)
        PromptSetHoldMode(SellPetrole, true)
        PromptSetGroup(SellPetrole, SellGroup)
        PromptRegisterEnd(SellPetrole)
    end)
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end

Citizen.CreateThread(function()
    RecoltPetrolePrompt()
    RecoltPetroleTraitementPrompt()
    RecoltPetroleFabricPrompt()
    RecoltPetroleSellPrompt()
    local blipsPetrole = N_0x554d9d53f696d002(1664425300, 498.6969, 674.5578, 121.0911)
    SetBlipSprite(blipsPetrole, -426139257, 1)
    SetBlipScale(blipsPetrole, 10.0)
    Citizen.InvokeNative(0x9CB1A1623062F402, blipsPetrole, 'Compañia Petrolera')
end)

function Distance(coords, coords2)
	return #(coords-coords2)
end

Citizen.CreateThread(function()
    service = true
    while service do 
        Citizen.Wait(8)
        local Inservice = vector3(1066.05, -1116.12, 67.85)
        if Distance(GetEntityCoords(PlayerPedId()), Inservice) <= 1.0 then
            TriggerEvent('vorp:TipBottom', " لبداء العمل  | أو التوقف عن العمل SPACE اضغط", 1000)
            Citizen.InvokeNative(0x2A32FAA57B937173, 0x94FDAE17, Inservice.x, Inservice.y, Inservice.z - 1.0, 0, 0, 0, 0, 0, 0, 0.8, 0.8, 0.2, 255, 255, 255, 50, 0, 0, 1, 0, 0, 0, 0)
            Citizen.InvokeNative(0xE9990552DEC71600)
            if IsControlJustPressed(0, 0xD9D0E1C0) then
                TriggerServerEvent('Ciudad_Farm:DVRCheckpermissionjob')
            end
        end
    end
end)

RegisterNetEvent('Ciudad_Farm:startinservice')
AddEventHandler('Ciudad_Farm:startinservice', function()
  
   -- local car_name = "OILWAGON01X"
  --  local carHash  = GetHashKey(car_name)
    local ped      = PlayerPedId()

  --  RequestModel(carHash)

  --  while not HasModelLoaded(carHash) do
 --       Citizen.Wait(8)
  --  end

    startPetrolejob = not startPetrolejob
    if startPetrolejob then
        TriggerEvent('vorp:Tip', "أنت في الخدمة. في العمل", 3000)
   --     car = CreateVehicle(carHash, 983.63, -1996.89, 46.95, 259.4, true, false)
   --     SetVehicleOnGroundProperly(car)
    --    SetModelAsNoLongerNeeded(carHash)
        Zonerecolte = N_0x554d9d53f696d002(1664425300, 1011.74, -1120.74, 62.96) -- المرحلة الاولة تجميع
        SetBlipSprite(Zonerecolte, -1944395098, 1)
        SetBlipScale(Zonerecolte, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonerecolte, 'The first step (ALTAJMIE)')
        Zonetraitement = N_0x554d9d53f696d002(1664425300, 1061.67, -1110.8, 67.39) -- المرحلة الثانية تصفية
        SetBlipSprite(Zonetraitement, -1944395098, 1)
        SetBlipScale(Zonetraitement, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonetraitement, 'Step two (TAGHLIF)')
        Zonefabrication = N_0x554d9d53f696d002(1664425300, 1054.88, -1126.33, 67.94)-- المرحلة الثاثة تغليف
        SetBlipSprite(Zonefabrication, -1944395098, 1)
        SetBlipScale(Zonefabrication, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonefabrication, 'Step three (TAGHLIF)')
        Zonevente = N_0x554d9d53f696d002(1664425300, 192.03, -413.09, 87.78) -- المرحلة الرابعه البيع
        SetBlipSprite(Zonevente, -426139257, 1)
        SetBlipScale(Zonevente, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonevente, 'Sales location (Sell)')
        TriggerEvent('Ciudad_Farm:startJobPetrole')
        TriggerEvent('Ciudad_Farm:startTraitement')
        TriggerEvent('Ciudad_Farm:startJobPetroleFabrication')
        TriggerEvent('Ciudad_Farm:startJobPetrolesell')
    else
        DeleteVehicle(car)
        RemoveBlip(Zonerecolte)
        RemoveBlip(Zonetraitement)
        RemoveBlip(Zonefabrication)
        RemoveBlip(Zonevente)
        Zonerecolte = nil
        Zonetraitement = nil
        Zonefabrication = nil 
        Zonevente = nil
        jobs = false
        jobs2 = false
        jobs3 = false
        jobs4 = false
 
        TriggerEvent('vorp:Tip', "أنت لم تعد في الخدمة", 3000)
    end
end)

RegisterNetEvent("Ciudad_Farm:startJobPetrole")
AddEventHandler("Ciudad_Farm:startJobPetrole", function()
    jobs = true
    while jobs do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Empleado Ganadero ", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "أنت لا تزال في العمل", 3000)
        end
        local coords1 = vector3(1011.74, -1120.74, 62.96) -- المرحلة الاولة تجميع
        if Distance(GetEntityCoords(PlayerPedId()), coords1) <= 8.3 then
          --  local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
          --  if IsPedSittingInVehicle(PlayerPedId(), vehicle, true) then
                local Petrole = CreateVarString(10, 'LITERAL_STRING',"Trigo")
                PromptSetActiveGroupThisFrame(RecoltGroup, Petrole)
                if PromptHasHoldModeCompleted(RecoltPetrole) then
                    if Config.Freeze then
                        FreezeEntityPosition(vehicle, true)
                    end
                    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 12000, true, false, false, false)
                    TriggerEvent("vorp:TipBottom", "جاري حصد الذرة..", 12000)
                    Wait(10000)
                    ClearPedTasksImmediately(PlayerPedId())
	                Wait(1000)
                    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_FARMER_RAKE'), 18000, true, false, false, false)
                    TriggerEvent("vorp:TipBottom", "تنظيف الارض...", 18000)
                    Wait(10000)
                    ClearPedTasksImmediately(PlayerPedId())
                    TriggerServerEvent('Ciudad_Farm:DVRAdd:Petrole')
                    if Config.Freeze then
                        FreezeEntityPosition(vehicle, false)
                    end
                    Citizen.Wait(30000)
                end
            else
                --TriggerEvent('vorp:Tip', "~t6~Para abandonar el vehiculos Sal de Servicio!", 3000)
            end
        end
   -- end
end)

RegisterNetEvent("Ciudad_Farm:startTraitement")
AddEventHandler("Ciudad_Farm:startTraitement", function()
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
    end

    jobs2 = true
    while jobs2 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Estás de servicio ", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "أنت لا تزال في العمل ", 3000)
        end
        local coords2 = vector3(1061.67, -1110.8, 67.39)  -- المرحلة الثاثة تغليف
        if Distance(GetEntityCoords(PlayerPedId()), coords2) <= 8.3 then
            local traitmeent = CreateVarString(10, 'LITERAL_STRING',"Trigo")
            PromptSetActiveGroupThisFrame(TraitementGroup, traitmeent)
            if PromptHasHoldModeCompleted(TraitementPetrole) then
                TaskPlayAnim(PlayerPedId(), dict, "idle_a", 1.0, 8.0, -1, 1, 0, false, false, false)
                if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), true)
                end
                TriggerEvent('Ciudad_Farm:startTimer')
                Petrole = true
                Wait(20000)
                Petrole = false
                TriggerServerEvent('Ciudad_Farm:addPetrole')
                if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end)

RegisterNetEvent("Ciudad_Farm:startJobPetroleFabrication")
AddEventHandler("Ciudad_Farm:startJobPetroleFabrication", function()
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
    end

    jobs3 = true
    while jobs3 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Estás de servicio ", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "أنت لا تزال في العمل", 3000)
        end
        local coords3 = vector3(1054.88, -1126.33, 67.94) -- المرحلة الرابعه البيع
        if Distance(GetEntityCoords(PlayerPedId()), coords3) <= 8.3 then
            local fabric = CreateVarString(10, 'LITERAL_STRING',"Trigo")
            PromptSetActiveGroupThisFrame(FabricationGroup, fabric)
            if PromptHasHoldModeCompleted(FabricationPetrole) then
               -- TaskPlayAnim(PlayerPedId(), dict, "idle_a", 1.0, 8.0, -1, 1, 0, false, false, false)
                if Config.Freeze then
				TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('PROP_HUMAN_SACK_STORAGE_IN'), 7000, true, false, false, false)
                FreezeEntityPosition(PlayerPedId(), true)
                end
                TriggerEvent('Ciudad_Farm:startTimerenballage')
                PetroleEmballage = true
                Wait(10000)
                TriggerServerEvent('Ciudad_Farm:EmballagePetrole')
                PetroleEmballage = false
                if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end)

RegisterNetEvent("Ciudad_Farm:startJobPetrolesell")
AddEventHandler("Ciudad_Farm:startJobPetrolesell", function()
    jobs4 = true
    while jobs4 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Estás de servicio ", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "~t6~Todavía estás de servicio", 3000)
        end
        local coords4 = vector3(192.03, -413.09, 87.78)
        if Distance(GetEntityCoords(PlayerPedId()), coords4) <= 2.0 then
           -- local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
          --  if IsPedSittingInVehicle(PlayerPedId(), vehicle, true) then
                local sell = CreateVarString(10, 'LITERAL_STRING',"Saco de Trigo")
                PromptSetActiveGroupThisFrame(SellGroup, sell)
                if PromptHasHoldModeCompleted(SellPetrole) then
                    TriggerServerEvent('Ciudad_Farm:SellPetrole')
                end
            else
              --  TriggerEvent('vorp:Tip', "~t6~Para abandonar el vehiculos Sal de Servicio!", 3000)
            end
        end
   -- end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then    
        DeleteVehicle(car) 
        RemoveBlip(Zonerecolte)
        RemoveBlip(Zonetraitement)
        RemoveBlip(Zonefabrication)
        RemoveBlip(Zonevente)
        Zonerecolte = nil
        Zonetraitement = nil
        Zonefabrication = nil 
        Zonevente = nil
        jobs = false
        jobs2 = false
        jobs3 = false
        jobs4 = false
    end
end)

RegisterCommand('debugp', function()
    debug.start = not debug.start
    if Config.Debug then 
        if debug.start then
            TriggerEvent('Ciudad_Farm:startJobPetrole')
            TriggerEvent('Ciudad_Farm:startTraitement')
            TriggerEvent('Ciudad_Farm:startJobPetroleFabrication')
            TriggerEvent('Ciudad_Farm:startJobPetrolesell')
        else
            DeleteVehicle(car)
            RemoveBlip(Zonerecolte)
            RemoveBlip(Zonetraitement)
            RemoveBlip(Zonefabrication)
            RemoveBlip(Zonevente)
            Zonerecolte = nil
            Zonetraitement = nil
            Zonefabrication = nil 
            Zonevente = nil
            Petrole = false
            jobs = false
            jobs2 = false
            jobs3 = false
            jobs4 = false
        end
    end
end)


