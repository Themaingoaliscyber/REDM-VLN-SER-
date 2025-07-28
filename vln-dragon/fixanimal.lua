-- Credits:
-- https://github.com/kibook/redm-fixanimals/

-- Detect change between human and animal ped
local redmFixAnimalsResourceState = GetResourceState('redm-fixanimals') 
if redmFixAnimalsResourceState ~= 'started' and redmFixAnimalsResourceState ~= 'starting' then
	CreateThread(function()
		local lastPed = 0
	
		while true do
			local ped = PlayerPedId()
	
			if ped ~= lastPed then
				if IsPedHuman(ped) then
					-- Reset control context
					SetControlContext(2, 0)
					IsAnimal = false
				else
					-- Prevent animal peds from climbing on ladders, as this crashes the game
					SetPedConfigFlag(ped, 43, true)
					IsAnimal = true
				end
	
				lastPed = ped
			end
	
			Wait(1000)
		end
	end)
	
	-- Handle special animal ped workarounds
	CreateThread(function()
		while true do
			if IsAnimal then
				-- Change control context
				SetControlContext(2, `OnMount`)
	
				-- Disable first person mode as an animal since the camera is glitchy and may cause crashes
				DisableOnFootFirstPersonViewThisUpdate()
			end
	
			Wait(0)
		end
	end)
end