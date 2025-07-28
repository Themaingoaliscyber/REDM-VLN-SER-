local prompts = GetRandomIntInRange(0, 0xffffff)
Blips = {
    {
        ["name"] = "St-Denis Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2666.95, -1468.17, 46.31),
    },
    {
        ["name"] = "Valentine Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-186.34, 643.96, 113.45),
    },
    {
        ["name"] = "Rhodes Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(1247.47, -1291.81, 75.95),
    },
    {
        ["name"] = "Van Horn Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2901.62, 635.99, 56.23),
    },
    {
        ["name"] = "Annesburg Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2928.05, 1296.68, 44.50),
    },
    {
        ["name"] = "Strawberry Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1736.89, -413.78, 154.98),
    },
    {
        ["name"] = "Armadillo Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-3725.55, -2628.03, -13.59),
    },
    {
        ["name"] = "Tumbleweed Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-5442.00, -2945.33, -0.57),
    },
    {
        ["name"] = "Lagras Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(2097.15, -583.48, 41.51),
    },
    {
        ["name"] = "EmeraldStation Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(1514.79, 437.71, 89.89),
    },
    {
        ["name"] = "Colter Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1306.07, 2424.79, 307.43),
    },
    {
        ["name"] = "MacFarlane Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-2501.15, -2443.82, 60.15),
    },
    {
        ["name"] = "WapitiIndian Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(483.91, 2177.92, 244.33),
    },
    {
        ["name"] = "Manzanita  Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1963.62, -1609.75, 116.06),
    },
    {
        ["name"] = "Thieves  Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-1455.06, -2328.14, 43.07),  
    },
        {
        ["name"] = "Fighting  Travel",
        ["hash"] = 784218150,
        ["coords"] = vector3(-4133.72, -3500.49, 39.09),  
    },
}

Citizen.CreateThread(function()
    if Blips then
        for k,v in pairs(Blips) do
            local blip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v.coords)
            SetBlipSprite(blip, v.hash, 1)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
        end
    end
end)

local isMenuOpen = false -- متغير لتحديد إذا كانت القائمة مفتوحة

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local coords = GetEntityCoords(PlayerPedId())
        local inZone = false -- متغير لتحديد ما إذا كان اللاعب داخل الزون

        -- التحقق إذا كان اللاعب داخل أي من النقاط المحددة
        if (Vdist(coords.x, coords.y, coords.z, -186.34, 643.96, 113.45) < 2.0) or -- Valentine
           (Vdist(coords.x, coords.y, coords.z, 2666.95, -1468.17, 46.31) < 2.0) or -- St-Denis
           (Vdist(coords.x, coords.y, coords.z, 1247.47, -1291.81, 75.95) < 2.0) or -- Rhodes
           (Vdist(coords.x, coords.y, coords.z, 2901.62, 635.99, 56.23) < 2.0) or -- Van Horn
           (Vdist(coords.x, coords.y, coords.z, 2928.05, 1296.68, 44.50) < 2.0) or -- Annesburg
           (Vdist(coords.x, coords.y, coords.z, -1736.89, -413.78, 154.98) < 2.0) or -- Strawberry
           (Vdist(coords.x, coords.y, coords.z, -744.12, -1248.09, 43.43) < 2.0) or -- Blackwater
           (Vdist(coords.x, coords.y, coords.z, -3725.55, -2628.03, -13.59) < 2.0) or -- Armadillo
           (Vdist(coords.x, coords.y, coords.z, -5442.00, -2945.33, -0.57) < 2.0) or -- Tumbleweed
           (Vdist(coords.x, coords.y, coords.z, 2097.15, -583.48, 41.51) < 2.0) or -- Lagras
           (Vdist(coords.x, coords.y, coords.z, 1514.79, 437.71, 89.89) < 2.0) or -- EmeraldStation
           (Vdist(coords.x, coords.y, coords.z, -1306.07, 2424.79, 307.43) < 2.0) or -- Colter
           (Vdist(coords.x, coords.y, coords.z, -2501.15, -2443.82, 60.15) < 2.0) or -- MacFarlane
           (Vdist(coords.x, coords.y, coords.z, 483.91, 2177.92, 244.33) < 2.0) or -- WapitiIndian
           (Vdist(coords.x, coords.y, coords.z, -1963.62, -1609.75, 116.06) < 2.0) or -- Manzanita
           (Vdist(coords.x, coords.y, coords.z, -1455.06, -2328.14, 43.07) < 2.0) or -- Thieves
           (Vdist(coords.x, coords.y, coords.z, -4133.72, -3500.49, 39.09) < 2.0) then -- Fighting

            inZone = true -- اللاعب داخل الزون
        end

        if inZone then
            -- إذا كان اللاعب داخل الزون، عرض زر التفاعل
            local label = CreateVarString(10, 'LITERAL_STRING', Config.ButtonDesc)
            PromptSetActiveGroupThisFrame(prompts, label)
            if Citizen.InvokeNative(0xC92AC953F0A982AE, openShop) and not isMenuOpen then
                TRAVVELING()
                isMenuOpen = true -- تسجيل أن القائمة مفتوحة
            end
        else
            -- إذا كان اللاعب خارج الزون، إغلاق القائمة الخاصة فقط
            if isMenuOpen then
                MenuData.CloseAll()
                FreezeEntityPosition(PlayerPedId(), false) -- تأكد من إلغاء التجميد
                isMenuOpen = false -- تحديث حالة القائمة
            end
        end
    end
end)



MenuData = {}
TriggerEvent("vorp_menu:getData",function(call)
    MenuData = call
end)

function TRAVVELING()
        MenuData.CloseAll()
		MenuData.Open('default', GetCurrentResourceName(), 'mag_cantitate',
		{title = Config.Tittle, subtext = Config.SubTittle.."<br><br>", align = Config.Align,        
        elements = {
        {label = "<span style ='float: left;'>"..Config.Valentine.."</span><span style='float:right;'>"..Config.ValentinePrice.."</span><span style='float:right;'>$", desc =  "<br><br><br><br>"..Config.ValentineDesc , value = "valentine"},
        {label = "<span style ='float: left;'>"..Config.STDenis.."</span><span style='float:right;'>"..Config.STDenisPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.STDenisDesc, value = "stdenis" },
        {label = "<span style ='float: left;'>"..Config.Annesburg.."</span><span style='float:right;'>"..Config.AnnesburgPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.AnnesburgDesc, value = "annesburg" },
        {label = "<span style ='float: left;'>"..Config.VanHorn.."</span><span style='float:right;'>"..Config.VanHornPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.VanHornDesc, value = "vanhorn" },
        {label = "<span style ='float: left;'>"..Config.Rhodes.."</span><span style='float:right;'>"..Config.RhodesPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.RhodesDesc, value = "rhodes" },
        {label = "<span style ='float: left;'>"..Config.Blackwater.."</span><span style='float:right;'>"..Config.BlackwaterPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.BlackwaterDesc, value = "blackwater" },
        {label = "<span style ='float: left;'>"..Config.Strawberry.."</span><span style='float:right;'>"..Config.StrawberryPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.StrawberryDesc, value = "strawberry" },
        {label = "<span style ='float: left;'>"..Config.Armadillo.."</span><span style='float:right;'>"..Config.ArmadilloPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.ArmadilloDesc, value = "armadillo" },
        {label = "<span style ='float: left;'>"..Config.Tumbleweed.."</span><span style='float:right;'>"..Config.TumbleweedPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.TumbleweedDesc, value = "tumbleweed" },
        {label = "<span style ='float: left;'>"..Config.Lagras.."</span><span style='float:right;'>"..Config.LagrasPrice.."</span><span style='float:right;'>$", desc = "<br><br><br><br>"..Config.LagrasDesc, value = "lagras" },
        {label = "<span style ='float: left;'>"..Config.EmeraldStation.."</span><span style='float:right;'>"..Config.EmeraldStationPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.EmeraldStationDesc, value = "EmeraldStation" },
        {label = "<span style ='float: left;'>"..Config.Colter.."</span><span style='float:right;'>"..Config.ColterPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.ColterDesc, value = "colter" },
        {label = "<span style ='float: left;'>"..Config.Macfarlane.."</span><span style='float:right;'>"..Config.MacfarlanePrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.MacfarlaneDesc, value = "macfarlane" },
        {label = "<span style ='float: left;'>"..Config.Wapitiindian.."</span><span style='float:right;'>"..Config.WapitiindianPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.WapitiindianDesc, value = "wapitiindian" },
        {label = "<span style ='float: left;'>"..Config.Manzanita.."</span><span style='float:right;'>"..Config.ManzanitaPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.ManzanitaDesc, value = "manzanita" },
        {label = "<span style ='float: left;'>"..Config.Thieves.."</span><span style='float:right;'>"..Config.ThievesPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.ThievesDesc, value = "Thieves" },
        {label = "<span style ='float: left;'>"..Config.Fighting.."</span><span style='float:right;'>"..Config.FightingPrice.."</span><span style='float:right;'>$", desc ="<br><br><br><br>".. Config.FightingDesc, value = "fighting" },		
        }}, function(data, menu)
		
			if data.current.value == "valentine" then
			TriggerServerEvent("vln-fasttravel_check:valentine")
			menu.close()
			elseif data.current.value == "stdenis" then
			TriggerServerEvent("vln-fasttravel_check:denis")
			menu.close()		
			elseif data.current.value == "annesburg" then
			TriggerServerEvent("vln-fasttravel_check:annesburg")
			menu.close()				
			elseif data.current.value == "vanhorn" then
			TriggerServerEvent("vln-fasttravel_check:vanhorn")
			menu.close()	
			elseif data.current.value == "rhodes" then
			TriggerServerEvent("vln-fasttravel_check:rhodes")
			menu.close()	
			elseif data.current.value == "blackwater" then
			TriggerServerEvent("vln-fasttravel_check:blackwater")
			menu.close()
			elseif data.current.value == "strawberry" then
			TriggerServerEvent("vln-fasttravel_check:strawberry")
			menu.close()
			elseif data.current.value == "armadillo" then
			TriggerServerEvent("vln-fasttravel_check:armadillo")
			menu.close()
			elseif data.current.value == "tumbleweed" then
			TriggerServerEvent("vln-fasttravel_check:tumbleweed")
			menu.close()
			elseif data.current.value == "lagras" then
			TriggerServerEvent("vln-fasttravel_check:Lagras")
			menu.close()
            elseif data.current.value == "EmeraldStation" then
			TriggerServerEvent("vln-fasttravel_check:EmeraldStation")
			menu.close()
			elseif data.current.value == "colter" then
			TriggerServerEvent("vln-fasttravel_check:Colter")
			menu.close()
			elseif data.current.value == "macfarlane" then
			TriggerServerEvent("vln-fasttravel_check:MacFarlane")
			menu.close()
			elseif data.current.value == "wapitiindian" then
			TriggerServerEvent("vln-fasttravel_check:WapitiIndian")
			menu.close()
			elseif data.current.value == "manzanita" then
			TriggerServerEvent("vln-fasttravel_check:Manzanita")
			menu.close()
            elseif data.current.value == "Thieves" then
			TriggerServerEvent("vln-fasttravel_check:Thieves")
			menu.close()
            elseif data.current.value == "fighting" then
            TriggerServerEvent("vln-fasttravel_check:Fighting")
            menu.close()
            else
			menu.close()
			end
    	end, function(data, menu)
		menu.close()
		end)
end


Citizen.CreateThread(function()
    while not vorp_menu do
        Wait(100)  -- Attendre un court moment (100 ms) et vérifier à nouveau
    end

    local checkbox2 = false
    vorp_menu.CreateMenu('FastTravel', '- Fast Travel -')
    vorp_menu.SetSubTitle('FastTravel', '- Destination -')
    vorp_menu.CreateSubMenu('Destination', 'FastTravel', 'Choose Destination')

    while true do
        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(ped)

        if vorp_menu.IsMenuOpened('FastTravel') then
            if vorp_menu.MenuButton('Choose Destination', 'Destination') then
                -- Logique pour le bouton 'Choose Destination'
            end

            vorp_menu.Display()
            elseif vorp_menu.IsMenuOpened('Destination') then
            if vorp_menu.Button("Valentine - (10.00$)") then
                TriggerServerEvent("vln-fasttravel_check:valentine")
                vorp_menu.CloseMenu()
            elseif vorp_menu.Button("St-Denis - (10.00$)") then
                TriggerServerEvent("vln-fasttravel_check:denis")
                vorp_menu.CloseMenu()

			elseif vorp_menu.Button("Annesburg - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:annesburg")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("Van Horn - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:vanhorn")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("Rhodes - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:rhodes")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("Blackwater - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:blackwater")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("Strawberry - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:strawberry")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("Armadillo - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:armadillo")
            vorp_menu.CloseMenu()
			
			elseif vorp_menu.Button("TumbleWeed - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:tumbleweed")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Lagras - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:Lagras")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("EmeraldStation - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:EmeraldStation")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Colter - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:Colter")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("MacFarlane - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:MacFarlane")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("WapitiIndian - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:WapitiIndian")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Manzanita - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:Manzanita")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Thieves - (10.00$)") then
            TriggerServerEvent("vln-fasttravel_check:Thieves")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Fighting - (10.00$)") then      
            TriggerServerEvent("vln-fasttravel_check:Fighting")
            vorp_menu.CloseMenu()

            elseif vorp_menu.Button("Close") then
            vorp_menu.CloseMenu()
            end

            vorp_menu.Display()
        end

        Citizen.Wait(0)
        end
     end)

-- Valentine
RegisterNetEvent('vln-fasttravel:valentine')
AddEventHandler('vln-fasttravel:valentine', function()
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -95.73, 262.4, 103.55)
end)

-- St-Denis
RegisterNetEvent('vln-fasttravel:denis')
AddEventHandler('vln-fasttravel:denis', function()
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2548.68, -182.74, 43.23)
end)

-- Rhodes
RegisterNetEvent('vln-fasttravel:rhodes')
AddEventHandler('vln-fasttravel:rhodes', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 1464.49, -809.37, 51.36)
end)

-- Van Horn
RegisterNetEvent('vln-fasttravel:vanhorn')
AddEventHandler('vln-fasttravel:vanhorn', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2819.76, 924.41, 50.4)
end)

-- Annesburg
RegisterNetEvent('vln-fasttravel:annesburg')
AddEventHandler('vln-fasttravel:annesburg', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2819.76, 924.41, 50.4)
end)

-- Strawberry
RegisterNetEvent('vln-fasttravel:strawberry')
AddEventHandler('vln-fasttravel:strawberry', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1449.62, -539.62, 130.96)
end)

-- Blackwater
RegisterNetEvent('vln-fasttravel:blackwater')
AddEventHandler('vln-fasttravel:blackwater', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1598.38, -1215.21, 75.18)
end)

-- Armadillo
RegisterNetEvent('vln-fasttravel:armadillo')
AddEventHandler('vln-fasttravel:armadillo', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -4250.11, -2711.82, 4.99)
end)

-- TumbleWeed
RegisterNetEvent('vln-fasttravel:tumbleweed')
AddEventHandler('vln-fasttravel:tumbleweed', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -4885.84, -3019.35, -18.05)
end)

-- Lagras
RegisterNetEvent('vln-fasttravel:Lagras')
AddEventHandler('vln-fasttravel:Lagras', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 2097.15, -583.48, 41.51)
end)

-- EmeraldStation
RegisterNetEvent('vln-fasttravel:EmeraldStation')
AddEventHandler('vln-fasttravel:EmeraldStation', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 1774.72, 570.48, 106.28)
end)

-- Colter
RegisterNetEvent('vln-fasttravel:Colter')
AddEventHandler('vln-fasttravel:Colter', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1375.06, 1932.2, 317.38)
end)

-- MacFarlane
RegisterNetEvent('vln-fasttravel:MacFarlane')
AddEventHandler('vln-fasttravel:MacFarlane', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -2214.05, -2513.88, 65.44)
end)

-- WapitiIndian
RegisterNetEvent('vln-fasttravel:WapitiIndian')
AddEventHandler('vln-fasttravel:WapitiIndian', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, 440.91, 2033.28, 234.23)
end)

-- Manzanita 
RegisterNetEvent('vln-fasttravel:Manzanita')
AddEventHandler('vln-fasttravel:Manzanita', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1965.39, -1907.87, 99.21)
end)

--Thieves
RegisterNetEvent('vln-fasttravel:Thieves')
AddEventHandler('vln-fasttravel:Thieves', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -1554.64, -2461.96, 43.61)
end)

-- Fighting
RegisterNetEvent('vln-fasttravel:Fighting')
AddEventHandler('vln-fasttravel:Fighting', function()	
	local ped = PlayerPedId()
	DoScreenFadeOut(3000)
	Wait(6000)
	DoScreenFadeIn(3000)
	SetEntityCoords(ped, -4133.72, -3500.49, 39.09)
end)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local str = Config.Button
	openShop = PromptRegisterBegin()
	PromptSetControlAction(openShop, 0xC7B5340A)
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openShop, str)
	PromptSetEnabled(openShop, 1)
	PromptSetVisible(openShop, 1)
	PromptSetStandardMode(openShop,1)
    PromptSetHoldMode(openShop, 1)
	PromptSetGroup(openShop, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openShop,true)
	PromptRegisterEnd(openShop)
end)



function DrawInfo(text, x, y, size)
    local xc = x / 1.0;
    local yc = y / 1.0;
    SetScriptGfxDrawOrder(3)
    SetTextScale(size, size)
    SetTextCentre(true)
    SetTextColor(255, 255, 255, 100)
    SetTextFontForCurrentCommand(6)
    DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
    SetScriptGfxDrawOrder(3)
end