local openmenu
local prompts = GetRandomIntInRange(0, 0xffffff)
local inmenu = false 
local discordid 
local stuff
local blips = {}
TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)
AddEventHandler('menuapi:closemenu', function()
    TriggerEvent("vln_recomps:setmenu")
end)
AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName == GetCurrentResourceName() then
            for k,v in pairs(blips) do
                RemoveBlip(v)
            end
        end
    end
)
function ToInteger(number)
    number = tonumber(number)
    if number ~= nil then 
        if 0 >  number then 
            number = number * -1
        end
        return math.floor(number or error("Could not cast '" .. tostring(number) .. "' to number.'"))
    else
        return 0
    end
end

Citizen.CreateThread(function()
    Wait(1000)
    local str = "Open"
	openmenu = PromptRegisterBegin()
	PromptSetControlAction(openmenu, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openmenu, str)
	PromptSetEnabled(openmenu, 1)
	PromptSetVisible(openmenu, 1)
	PromptSetStandardMode(openmenu,1)
	PromptSetGroup(openmenu, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openmenu,true)
	PromptRegisterEnd(openmenu)

    for k, v in pairs(Config.stations) do
        if v.showblip then 
            local blip = N_0x554d9d53f696d002(1664425300, v.pos.x, v.pos.y, v.pos.z)
            SetBlipSprite(blip, v.blip, 1)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
            table.insert(blips,blip)
        end
    end

end)
RegisterNetEvent("vln_recomps:setmenu") 
AddEventHandler("vln_recomps:setmenu", function()
    inmenu = false
    FreezeEntityPosition(PlayerPedId(),false)
    ClearPedTasks(PlayerPedId())
end)
RegisterNetEvent("vln_recomps:recdiscord") 
AddEventHandler("vln_recomps:recdiscord", function(x,y)
    discordid = x 
    stuff = y 
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local sleep = true 
        local coords = GetEntityCoords(PlayerPedId())
        for k,v in pairs(Config.stations) do 
            local distance = GetDistanceBetweenCoords(coords,v.pos.x,v.pos.y,v.pos.z , true)
            if 2 > distance and not inmenu then 
                sleep = false 
                local label  = CreateVarString(10, 'LITERAL_STRING', "Recomp Station")
                PromptSetActiveGroupThisFrame(prompts, label)
                if Citizen.InvokeNative(0xC92AC953F0A982AE,openmenu) then
                    inmenu = true
                    discordid = nil 
                    TriggerServerEvent("vln_recomps:getdiscord")
                    while discordid == nil do 
                        Wait(100)
                    end 
                    if discordid == "none" then 
                        TriggerEvent("vorp:TipBottom", "restart redm and discord", 4000)
                    else
                        recompmenu() 
                        FreezeEntityPosition(PlayerPedId(),true)
                        TaskStandStill(PlayerPedId(), -1)        
                    end
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)

function recompmenu() 
    MenuData.CloseAll()
    local elements = {
        {label = "cash: $"..stuff[1].cash, value = "takecash" , desc = ""},
        {label = "items", value = "items" , desc = ""},
        {label = "weapons", value = "wep" , desc = ""},
        
    }
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = "Recomp menu",
		subtext    = "",
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
        if data.current.value == "takecash" then 
            if tonumber(stuff[1].cash) > 0 then 
                TriggerServerEvent("vln_recomps:takecash")
                MenuData.CloseAll()
            end
        end
        if data.current.value == "items" then 
            itemsmenu()
        end
        if data.current.value == "wep" then 
            weaponsmenu()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function itemsmenu() 
    MenuData.CloseAll()
    local elements = { 
    }
    for k,v in pairs(stuff[1].items) do 
        table.insert( elements, {label = v.label..": "..ToInteger(v.count), value = v , desc = ""})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = "Recomp menu",
		subtext    = "",
		align    = 'top-left',
		elements = elements,
        lastmenu = "recompmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        else
            MenuData.CloseAll()
            TriggerServerEvent("vln_recomps:takeitems",data.current.value.item,data.current.value.limit)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function weaponsmenu() 
    MenuData.CloseAll()
    local elements = { 
    }
    for k,v in pairs(stuff[1].weapons) do 
        table.insert( elements, {label = Config.weplabels[v], value = v , desc = ""})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = "Recomp menu",
		subtext    = "",
		align    = 'top-left',
		elements = elements,
        lastmenu = "recompmenu",

	},
	function(data, menu)
        if data.current == "backup" then 
            _G[data.trigger]()
        else
            MenuData.CloseAll()
            TriggerServerEvent("vln_recomps:takeweapon",data.current.value)
        end
	end,
	function(data, menu)
		menu.close()
	end)
end