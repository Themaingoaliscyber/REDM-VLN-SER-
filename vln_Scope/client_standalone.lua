if Config.Version ~= "Standalone" then return end

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
		if Config.Debug then
        	print("There is no weapon to remove scope component")
		end
	end
end

if Config.Version == "Standalone" then
    RegisterCommand(Config.AddScopeCommand, function()
        AttachScopeComponent()
    end, false)

    RegisterCommand(Config.RemoveScopeCommands, function()
        RemoveScopeComponent()
    end, false)
end