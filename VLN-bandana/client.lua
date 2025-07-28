local bandana = false
local sleeves = false
local sleeves2 = false
local rollpants = false 
local cache_comps = {}

RegisterNetEvent("vln-verst:bandana")
AddEventHandler("vln-verst:bandana", function(comps)
	cache_comps = json.decode(comps)
	if not bandana then 
		print(cache_comps.NeckWear)
		Citizen.InvokeNative(0xAE72E7DF013AAA61, PlayerPedId(), cache_comps.NeckWear, GetHashKey("BANDANA_ON_RIGHT_HAND"), 1, 0, -1082130432)
		Wait(700)
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.NeckWear, -1829635046, 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		bandana = true
		TriggerEvent("vln-robbery:bandana",bandana)
	else
		Citizen.InvokeNative(0xAE72E7DF013AAA61, PlayerPedId(),cache_comps.NeckWear, GetHashKey("BANDANA_OFF_RIGHT_HAND"), 1, 0, -1082130432) --TaskItemInteraction()
		Wait(700)
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.NeckWear, GetHashKey("base"), 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		bandana = false
		TriggerEvent("vln-robbery:bandana",bandana)
	end
end)

RegisterNetEvent("vln-verst:sleeves")
AddEventHandler("vln-verst:sleeves", function(comps)
	cache_comps = json.decode(comps)
	if not sleeves then 
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.Shirt, GetHashKey("Closed_Collar_Rolled_Sleeve"), 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		sleeves = true
	else
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.Shirt, GetHashKey("base"), 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		sleeves = false
	end
end)


RegisterNetEvent("vln-verst:sleeves2")
AddEventHandler("vln-verst:sleeves2", function(comps)
	cache_comps = json.decode(comps)
	if not sleeves2 then 
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.Shirt, GetHashKey("open_collar_rolled_sleeve"), 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		sleeves2 = true
	else
		Citizen.InvokeNative(0x66B957AAC2EAAEAB, PlayerPedId(),  cache_comps.Shirt, GetHashKey("base"), 0, true, 1)
		Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false)
		sleeves2 = false
	end
end)
