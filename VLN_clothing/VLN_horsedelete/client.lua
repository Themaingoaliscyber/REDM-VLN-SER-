local function RemoveHorse()
	local pedPool = GetGamePool('CPed') -- Get the list of vehicles (entities) from the pool
	for i = 1, #pedPool do -- loop through each vehicle (entity)
		local model = GetEntityModel(pedPool[i])
		if IsThisModelAHorse(model) and not GetVehicleDraftHorseIsAttachedTo(pedPool[i]) then
			Citizen.CreateThread(function()
				--delete horse
				NetworkRequestControlOfEntity(pedPool[i])
				while not NetworkHasControlOfEntity(pedPool[i]) and DoesEntityExist(pedPool[i]) do
					Wait(10)
					NetworkRequestControlOfEntity(pedPool[i])
				end
				if DoesEntityExist(pedPool[i]) then
					DeleteEntity(pedPool[i])
				end
			end)
		end
	end
	SetTimeout(Config.Time, function()
		RemoveHorse()
	end)
end

Citizen.CreateThread(function()
	RemoveHorse()
end)

function IsThisModelAHorse(...)
 return Citizen.InvokeNative(0x772A1969F649E902,...)
end

function IsThisModelAHorse(...)
 return Citizen.InvokeNative(0x772A1969F649E902,...)
end

function GetVehicleDraftHorseIsAttachedTo(...)
 return Citizen.InvokeNative(0xE4770DA1B8FF4FD1,...)
end