local Cam = nil
local Controller = nil
local StartingFov = 0.0
local ShowHud = true
local Speed = Config.Speed
local CameraLocked = false
local Timecycle = 1
local FilterEnabled = false
local GridEnabled = false
local AttachedCamEntity = nil
local FollowCam = false

RegisterNetEvent('freecam:toggle')
RegisterNetEvent('freecam:toggleLock')
RegisterNetEvent('freecam:toggleAttached')

function LoadModel(model)
	if IsModelInCdimage(model) then
		RequestModel(model)

		while not HasModelLoaded(model) do
			Wait(0)
		end

		return true
	else
		return false
	end
end

function AttachCam(entity, followCam)
	local entPos = GetEntityCoords(entity)
	local camPos

	if Cam then
		camPos = GetCamCoord(Cam)
	else
		camPos = GetGameplayCamCoord()

		EnableFreeCam()
	end

	if followCam then
		local y = #(camPos.xy - entPos.xy)
		local z = camPos.z - entPos.z
		AttachCamToEntity(Cam, entity, 0.0, -y, z, true)
	else
		AttachCamToEntity(Cam, entity, camPos - entPos, false)
	end

	AttachedCamEntity = entity
	FollowCam = followCam
end

function EnableFreeCam()
	local x, y, z = table.unpack(GetGameplayCamCoord())
	local pitch, roll, yaw = table.unpack(GetGameplayCamRot(2))
	local fov = GetGameplayCamFov()

	-- Moving the camera with SetCamCoord/SetCamRot disables the game's
	-- anti-aliasing while the camera is moving. Attaching the camera to an
	-- entity and moving that entity instead functions as a workaround for
	-- positioning (but not rotating) the camera.
	LoadModel(Config.ControllerModel)
	Controller = CreateObjectNoOffset(Config.ControllerModel, x, y, z, false, false, false, false)
	FreezeEntityPosition(Controller, true)
	SetEntityVisible(Controller, false)

	Cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
	SetCamRot(Cam, pitch, roll, yaw, 2)
	SetCamFov(Cam, fov)
	RenderScriptCams(true, true, 500, true, true)
	StartingFov = fov

	AttachCamToEntity(Cam, Controller, 0.0, 0.0, 0.0, true)

	if FilterEnabled then
		SetTimecycleModifier(Timecycles[Timecycle])
	end

	if GridEnabled then
		AnimpostfxPlay("CameraViewFinder")
	end
end

function DisableFreeCam()
	RenderScriptCams(false, true, 500, true, true)
	SetCamActive(Cam, false)
	DetachCam(Cam)
	DestroyCam(Cam, true)
	Cam = nil

	DeleteObject(Controller)

	AttachedCamEntity = nil

	if FilterEnabled then
		ClearTimecycleModifier()
	end

	if GridEnabled then
		AnimpostfxStop("CameraViewFinder")
	end
end

function ToggleFreeCam()
	if Cam then
		DisableFreeCam()
	else
		EnableFreeCam()
	end
end

function ToggleFreeCamLock()
	if not Cam then
		EnableFreeCam()
	end

	CameraLocked = not CameraLocked
end

function NextFilter()
	Timecycle = Timecycle == #Timecycles and 1 or Timecycle + 1
	SetTimecycleModifier(Timecycles[Timecycle])
	FilterEnabled = true
end

function PrevFilter()
	Timecycle = Timecycle == 1 and #Timecycles or Timecycle - 1
	SetTimecycleModifier(Timecycles[Timecycle])
	FilterEnabled = true
end

function ToggleFilter()
	if FilterEnabled then
		ClearTimecycleModifier()
		FilterEnabled = false
	else
		SetTimecycleModifier(Timecycles[Timecycle])
		FilterEnabled = true
	end
end

function ToggleGrid()
	if GridEnabled then
		AnimpostfxStop('CameraViewFinder')
		GridEnabled = false
	else
		AnimpostfxPlay('CameraViewFinder')
		GridEnabled = true
	end
end

function ToggleAttachedOrFollowCam(followCam)
	if AttachedCamEntity then
		SetEntityCoordsNoOffset(Controller, GetCamCoord(Cam))
		AttachCamToEntity(Cam, Controller, 0.0, 0.0, 0.0, true)
		AttachedCamEntity = nil
		FollowCam = false
	else
		AttachCam(PlayerPedId(), followCam)
	end
end

function ToggleAttachedCam()
	if FollowCam then
		ToggleFollowCam()
	end

	ToggleAttachedOrFollowCam(false)
end

function ToggleFollowCam()
	if AttachedCamEntity and not FollowCam then
		ToggleAttachedCam()
	end

	ToggleAttachedOrFollowCam(true)
end

function CheckControls(func, pad, controls)
	if type(controls) == 'number' then
		return func(pad, controls)
	end

	for _, control in ipairs(controls) do
		if func(pad, control) then
			return true
		end
	end

	return false
end

RegisterCommand('freecam', ToggleFreeCam) -- هذا الامر تقدر تحطة الي تبية 
RegisterCommand('lockcam', ToggleFreeCamLock) -- امر يثبت الكامرة بمحلها 
RegisterCommand('attachcam', ToggleAttachedCam) 
RegisterCommand('followcam', ToggleFollowCam) -- تتبع الشخص 

AddEventHandler('freecam:toggle', ToggleFreeCam)
AddEventHandler('freecam:toggleLock', ToggleFreeCamLock)
AddEventHandler('freecam:toggleAttached', ToggleAttachedCam)
AddEventHandler('freecam:toggleFollow', ToggleFollowCam)

function DrawText(text, x, y, centred)
	SetTextScale(0.35, 0.35)
	SetTextColor(255, 255, 255, 255)
	SetTextCentre(centred)
	SetTextDropshadow(1, 0, 0, 0, 200)
	SetTextFontForCurrentCommand(0)
	DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)
end

AddEventHandler('onResourceStop', function(resourceName)
	if GetCurrentResourceName() == resourceName and Cam then
		DisableFreeCam()
	end
end)

CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/freecam', 'Toggle freecam mode')
	TriggerEvent('chat:addSuggestion', '/lockcam', 'Lock/unlock the freecam')
	TriggerEvent('chat:addSuggestion', '/attachcam', 'Attach/detach camera in place')
	TriggerEvent('chat:addSuggestion', '/followcam', 'Follow behind player ped')

	while true do
		Wait(0)

		if Cam then
			local x, y, z = table.unpack(GetCamCoord(Cam))
			local pitch, roll, yaw = table.unpack(GetCamRot(Cam, 2))
			local fov = GetCamFov(Cam)

			-- Show controls or hide HUD
			if ShowHud then
				DrawText('Camera Mode:', 0.5, 0.01, true)
				if CameraLocked then
					DrawText('Locked', 0.5, 0.03, true)
				elseif AttachedCamEntity then
					if FollowCam then
						DrawText('Follow', 0.5, 0.03, true)
					else
						DrawText('Attached', 0.5, 0.03, true)
					end
				else
					DrawText('Free', 0.5, 0.03, true)
				end

				DrawText(string.format('Coordinates:\nX: %.2f\nY: %.2f\nZ: %.2f\nPitch: %.2f\nRoll: %.2f\nYaw: %.2f\nFOV: %.0f\nFilter: %s', x, y, z, pitch, roll, yaw, fov, FilterEnabled and Timecycles[Timecycle] or 'None'), 0.01, 0.3, false)

				if CameraLocked or AttachedCamEntity then
					DrawText('Return to Free mode - V', 0.5, 0.96)
				else
					DrawText(string.format('FreeCam Speed: %.3f', Speed), 0.5, 0.90, true)
					DrawText('W/A/S/D - Move, Spacebar/Shift - Up/Down, Page Up/Page Down - Change speed, Z/X - Zoom, C/V - Roll, B - Reset, Q - Hide HUD', 0.5, 0.93, true)
					DrawText('F/G - Cycle Filter, H - Toggle Filter, J - Toggle Grid', 0.5, 0.96, true)
				end
			else
				HideHudAndRadarThisFrame()
			end

			DisableFirstPersonCamThisFrame()

			if CameraLocked or AttachedCamEntity then
				DisableControlAction(0, Config.ExitLockedCamControl, true)

				if CheckControls(IsDisabledControlJustReleased, 0, Config.ExitLockedCamControl) then
					if CameraLocked then
						ToggleFreeCamLock()
					elseif FollowCam then
						ToggleFollowCam()
					else
						ToggleAttachedCam()
					end
				end

				if FollowCam then
					SetCamRot(Cam, GetEntityRotation(AttachedCamEntity))
				end
			else
				-- Disable all controls except a few while in freecam mode
				DisableAllControlActions(0)
				EnableControlAction(0, `INPUT_FRONTEND_PAUSE_ALTERNATE`)
				EnableControlAction(0, `INPUT_MP_TEXT_CHAT_ALL`)

				-- Ensure speed is within the specified range
				if Speed < Config.MinSpeed then
					Speed = Config.MinSpeed
				end
				if Speed > Config.MaxSpeed then
					Speed = Config.MaxSpeed
				end

				-- Ensure FOV is within the specified range
				if fov < Config.MinFov then
					fov = Config.MinFov
				end
				if fov > Config.MaxFov then
					fov = Config.MaxFov
				end

				-- Toggle HUD
				if CheckControls(IsDisabledControlJustPressed, 0, Config.ToggleHudControl) then
					ShowHud = not ShowHud
				end

				-- Reset camera
				if CheckControls(IsDisabledControlJustPressed, 0, Config.ResetCamControl) then
					roll = 0.0
					fov = StartingFov
				end

				-- Increase movement speed
				if CheckControls(IsDisabledControlPressed, 0, Config.IncreaseSpeedControl) then
					Speed = Speed + Config.SpeedIncrement
				end

				-- Decrease movement speed
				if CheckControls(IsDisabledControlPressed, 0, Config.DecreaseSpeedControl) then
					Speed = Speed - Config.SpeedIncrement
				end

				-- Move up
				if CheckControls(IsDisabledControlPressed, 0, Config.UpControl) then
					z = z + Speed
				end

				-- Move down
				if CheckControls(IsDisabledControlPressed, 0, Config.DownControl) then
					z = z - Speed
				end

				-- Rotate camera using the mouse/analog stick
				local axisX = GetDisabledControlNormal(0, 0xA987235F)
				local axisY = GetDisabledControlNormal(0, 0xD2047988)

				if axisX ~= 0.0 or axisY ~= 0.0 then
					yaw = yaw + axisX * -1.0 * Config.SpeedUd * 1.0
					pitch = math.max(math.min(89.9, pitch + axisY * -1.0 * Config.SpeedLr * 1.0), -89.9)
				end

				-- Roll left
				if CheckControls(IsDisabledControlPressed, 0, Config.RollLeftControl) then
					roll = roll - Config.RollSpeed
				end

				-- Roll right
				if CheckControls(IsDisabledControlPressed, 0, Config.RollRightControl) then
					roll = roll + Config.RollSpeed
				end

				-- Determine change in forward/backward movement
				local r1 = -yaw * math.pi / 180
				local dx1 = Speed * math.sin(r1)
				local dy1 = Speed * math.cos(r1)

				-- Determine change in left/right movement
				local r2 = math.floor(yaw + 90.0) % 360 * -1.0 * math.pi / 180
				local dx2 = Speed * math.sin(r2)
				local dy2 = Speed * math.cos(r2)

				-- Move forward
				if CheckControls(IsDisabledControlPressed, 0, Config.ForwardControl) then
					x = x + dx1
					y = y + dy1
				end

				-- Move backward
				if CheckControls(IsDisabledControlPressed, 0, Config.BackwardControl) then
					x = x - dx1
					y = y - dy1
				end

				-- Move left
				if CheckControls(IsDisabledControlPressed, 0, Config.LeftControl) then
					x = x + dx2
					y = y + dy2
				end

				-- Move right
				if CheckControls(IsDisabledControlPressed, 0, Config.RightControl) then
					x = x - dx2
					y = y - dy2
				end

				-- Increase FOV
				if CheckControls(IsDisabledControlPressed, 0, Config.IncreaseFovControl) then
					fov = fov + Config.ZoomSpeed
				end

				-- Decrease FOV
				if CheckControls(IsDisabledControlPressed, 0, Config.DecreaseFovControl) then
					fov = fov - Config.ZoomSpeed
				end

				-- Next filter
				if CheckControls(IsDisabledControlJustPressed, 0, Config.NextFilterControl) then
					NextFilter()
				end

				-- Previous filter
				if CheckControls(IsDisabledControlJustPressed, 0, Config.PrevFilterControl) then
					PrevFilter()
				end

				-- Reset filter
				if CheckControls(IsDisabledControlJustPressed, 0, Config.ToggleFilterControl) then
					ToggleFilter()
				end

				-- Toggle grid
				if CheckControls(IsDisabledControlJustPressed, 0, Config.ToggleGridControl) then
					ToggleGrid()
				end

				SetEntityCoordsNoOffset(Controller, x, y, z)
				SetCamRot(Cam, pitch, roll, yaw, 2)
				SetCamFov(Cam, fov)
			end
		end
	end
end)

CreateThread(function()
	while true do
		if AttachedCamEntity and not DoesEntityExist(AttachedCamEntity) then
			AttachCam(PlayerPedId(), FollowCam)
		end

		Wait(500)
	end
end)
RegisterCommand('openmenu', function()
    SetNuiFocus(true, true) -- فتح القائمة
    SendNUIMessage({action = "open"}) -- إرسال رسالة لفتح القائمة
end)

RegisterNUICallback('closemenu', function(data, cb)
    SetNuiFocus(false, false) -- إغلاق القائمة
    cb('ok') -- الرد
end)
