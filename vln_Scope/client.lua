if Config.Version ~= "VORP" then return end

local Core = exports.vorp_core:GetCore()
local playerPed = PlayerPedId()

local function AttachScopeComponent() -- For admin command
	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 85701152, 0xA84762EC, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), 431616357, 0xA84762EC, true) -- Improved
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xA84762EC, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 1052491799, 0x95B24592, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -1165022028, 0x95B24592, true) -- Improved Sight
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x95B24592, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 1258698427, 0x7194721E, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -1098615404, 0x7194721E, true) -- Improved Sight
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x7194721E, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 1258698427, 0xF5175BA1, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -1098615404, 0xF5175BA1, true) -- Improved Sight
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xF5175BA1, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		--GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xDDF7BC1E, true) -- Short Scope
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0xDDF7BC1E, true) -- Medium Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 1311478812, 0x772C8DD6, true) -- Improved Sight
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x772C8DD6, true) -- Short Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x772C8DD6, true) -- Medium Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0x772C8DD6, true) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		--GiveWeaponComponentToEntity(PlayerPedId(), 893095238, 0x63F46DE6, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -1747228523, 0x63F46DE6, true) -- Improved Sight
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x63F46DE6, true) -- Short Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x63F46DE6, true) -- Medium Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0x63F46DE6, true) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		--GiveWeaponComponentToEntity(PlayerPedId(), -555346213, 0xE1D2B317, true) -- Improved Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xE1D2B317, true) -- Short Scope
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0xE1D2B317, true) -- Medium Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0xE1D2B317, true) -- Long Scope
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		--GiveWeaponComponentToEntity(PlayerPedId(), -1301050378, 0x53944780, true) -- Stock Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -298805818, 0x53944780, true) -- Improved Sight
		--GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x53944780, true) -- Short Scope
		--GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x53944780, true) -- Medium Scope
		GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0x53944780, true) -- Long Scope
    else
		if Config.Notification.Enable then
			Core.NotifyLeft(Config.Notification.Successful, "There is no weapon to add scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
		end
		if Config.Debug then
        	print("There is no weapon to add scope component")
		end
	end
end

local function RemoveScopeComponent() -- For admin command
	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 85701152, 0xA84762EC) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), 431616357, 0xA84762EC) -- Improved
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xA84762EC) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 1052491799, 0x95B24592) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1165022028, 0x95B24592) -- Improved Sight
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x95B24592) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 1258698427, 0x7194721E) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1098615404, 0x7194721E) -- Improved Sight
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x7194721E) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 1258698427, 0xF5175BA1) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1098615404, 0xF5175BA1) -- Improved Sight
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xF5175BA1) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xDDF7BC1E) -- Short Scope
		RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0xDDF7BC1E) -- Medium Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 1311478812, 0x772C8DD6) -- Improved Sight
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x772C8DD6) -- Short Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x772C8DD6) -- Medium Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x772C8DD6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), 893095238, 0x63F46DE6) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1747228523, 0x63F46DE6) -- Improved Sight
		RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x63F46DE6) -- Short Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x63F46DE6) -- Medium Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x63F46DE6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), -555346213, 0xE1D2B317) -- Improved Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xE1D2B317) -- Short Scope
		RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0xE1D2B317) -- Medium Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0xE1D2B317) -- Long Scope
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1301050378, 0x53944780) -- Stock Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -298805818, 0x53944780) -- Improved Sight
		--RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x53944780) -- Short Scope
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x53944780) -- Medium Scope
		RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x53944780) -- Long Scope
    else
		if Config.Notification.Enable then
			Core.NotifyLeft(Config.Notification.Successful, "There is no weapon to remove scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_RED")
		end
		if Config.Debug then
        	print("There is no weapon to remove scope component")
		end
	end
end

local function RemoveScope()
	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xA84762EC) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xA84762EC) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_WINCHESTER_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x95B24592) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x95B24592) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_HENRY_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x7194721E) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x7194721E) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_EVANS_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xF5175BA1) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xF5175BA1) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_CARBINE_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_carbine", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xDDF7BC1E) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xDDF7BC1E) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0xDDF7BC1E) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0xDDF7BC1E) -- Medium Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x772C8DD6) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x772C8DD6) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x772C8DD6) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x772C8DD6) -- Medium Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_MEDIM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x772C8DD6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x63F46DE6) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x63F46DE6) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x63F46DE6) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x63F46DE6) -- Medium Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
		--RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x63F46DE6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0xE1D2B317) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0xE1D2B317) -- Medium Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1545766277, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0xE1D2B317) -- Long Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_LONG)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x53944780) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -404520310, 0x53944780) -- Short Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x53944780) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1844750633, 0x53944780) -- Medium Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1545766277, 0x53944780) then
			RemoveWeaponComponentFromPed(PlayerPedId(), -1545766277, 0x53944780) -- Long Scope
			TriggerServerEvent("vln_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_LONG)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
		progressbar = exports.vorp_progressbar:initiate()
		progressbar.start('...إزالة المنظار', 1500, function ()
			print('DONE!!!!')
		end, 'linear', '#ff0000', '20vw')
	end
end

local function Animation()
    if not HasAnimDictLoaded(Config.Anim.AnimDict) then
        RequestAnimDict(Config.Anim.AnimDict)
        while not HasAnimDictLoaded(Config.Anim.AnimDict) do
            Wait(10)
        end
    end

    TaskPlayAnim(PlayerPedId(), Config.Anim.AnimDict, Config.Anim.AnimName, 8.0, -8.0, Config.Anim.AnimDuration, 1, 0, false, false, false)
end

if Config.AdminCommand then
	RegisterCommand(Config.AdminAddScopeCommand, function()
		if LocalPlayer.state.Character.Group == Config.Group then
			AttachScopeComponent()
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Successful, "Scope Component Attached", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Attached")
			end
		else
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)

	RegisterCommand(Config.AdminRemoveScopeCommand, function()
		if LocalPlayer.state.Character.Group == Config.Group then
			RemoveScopeComponent()
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Successful, "Scope Component Removed", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Removed")
			end
		else
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)
end

if Config.RemoveScopeWithCommand then
	RegisterCommand(Config.RemoveScopeCommand, function()
		RemoveScope()
	end, false)
end

RegisterNetEvent("vln_Scope:AddScopeRepeaterWinchesterShort")
AddEventHandler("vln_Scope:AddScopeRepeaterWinchesterShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xA84762EC, true)
	else
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xA84762EC, true) -- WEAPON_REPEATER_WINCHESTER [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_WINCHESTER_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRepeaterHenryShort")
AddEventHandler("vln_Scope:AddScopeRepeaterHenryShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x95B24592, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_HENRY_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRepeaterEvansShort")
AddEventHandler("vln_Scope:AddScopeRepeaterEvansShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x7194721E, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_EVANS_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRepeaterCarbineShort")
AddEventHandler("vln_Scope:AddScopeRepeaterCarbineShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xF5175BA1, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_carbine", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_CARBINE_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleVarmintShort")
AddEventHandler("vln_Scope:AddScopeRifleVarmintShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xDDF7BC1E, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleVarmintMedium")
AddEventHandler("vln_Scope:AddScopeRifleVarmintMedium", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0xDDF7BC1E, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_MEDIUM)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleBoltactionShort")
AddEventHandler("vln_Scope:AddScopeRifleBoltactionShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x772C8DD6, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleBoltactionMedium")
AddEventHandler("vln_Scope:AddScopeRifleBoltactionMedium", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x772C8DD6, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_MEDIM)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleSpringfieldShort")
AddEventHandler("vln_Scope:AddScopeRifleSpringfieldShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x63F46DE6, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeRifleSpringfieldMedium")
AddEventHandler("vln_Scope:AddScopeRifleSpringfieldMedium", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x63F46DE6, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_MEDIUM)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleRollingblockShort")
AddEventHandler("vln_Scope:AddScopeSniperRifleRollingblockShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0xE1D2B317, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleRollingblockMedium")
AddEventHandler("vln_Scope:AddScopeSniperRifleRollingblockMedium", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0xE1D2B317, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_MEDIUM)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleRollingblockLong")
AddEventHandler("vln_Scope:AddScopeSniperRifleRollingblockLong", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0xE1D2B317, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_LONG)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleCarcanoShort")
AddEventHandler("vln_Scope:AddScopeSniperRifleCarcanoShort", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -404520310, 0x53944780, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_SHORT)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleCarcanoMedium")
AddEventHandler("vln_Scope:AddScopeSniperRifleCarcanoMedium", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1844750633, 0x53944780, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_MEDIUM)
end)

RegisterNetEvent("vln_Scope:AddScopeSniperRifleCarcanoLong")
AddEventHandler("vln_Scope:AddScopeSniperRifleCarcanoLong", function()
	local progressbar = exports.vorp_progressbar:initiate()
    progressbar.start('...تركيب منظار', 1500, function ()
        print('Scope installation in progress...')
    end, 'linear', '#b5921d', '20vw')
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), -1545766277, 0x53944780, true)
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("vln_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_LONG)
end)

RegisterNetEvent("vln_Scope:RemoveScope")
RegisterNetEvent("vln_Scope:RemoveScope", function()
	RemoveScope()
end)