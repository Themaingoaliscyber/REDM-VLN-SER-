local VORPcore = exports.vorp_core:GetCore()  
local Selected = true
local playerdatalevel  = 1
local targetShop = nil
local playerjob
local playerrank
local Oncrafting

local prompts = GetRandomIntInRange(0, 0xffffff)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local str = Config.SubPrompt
    openMailbox = PromptRegisterBegin()
    PromptSetControlAction(openMailbox, Config.PromptKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(openMailbox, str)
    PromptSetEnabled(openMailbox, 1)
    PromptSetVisible(openMailbox, 1)
    PromptSetStandardMode(openMailbox, 1)
    PromptSetHoldMode(openMailbox, 1)
    PromptSetGroup(openMailbox, prompts)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, openMailbox, true)
    PromptRegisterEnd(openMailbox)
end)

MenuData = {}
TriggerEvent("menuapi:getData", function(call)
    MenuData = call
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    Selected = true
    Citizen.Wait(1000)
    TriggerServerEvent('vln-survivalbook:getjob')
end)

RegisterNetEvent("vln-survivalbook:findjob")
AddEventHandler("vln-survivalbook:findjob", function(job, rank, group, level)
	playerjob = job
	playerrank = rank
    playergroup = group
    playerdatalevel = level
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.JobCooldown)
        TriggerServerEvent("vln-survivalbook:getjob")
    end
end)


local function IsStoreClosed(storeConfig)
    local hour = GetClockHours()
    if hour >= storeConfig.StoreClose or hour < storeConfig.StoreOpen then
       return "closed"
    elseif hour >= storeConfig.StoreOpen then
       return "opened"
    end
    return "none"
end

function jobcheck(tbl, element)
    for k, v in pairs(tbl) do
        if v == element then
            return true
        end
    end
    return false
end

Citizen.CreateThread(function()
    while true do
        local find = false
        for k, v in pairs(Config.CraftLocations) do
            local shopCoord = v.coords 
            if GetDistanceBetweenCoords(shopCoord, GetEntityCoords(PlayerPedId()), true) < Config.Distance then
                targetShop = k
                find = true
                sleep = 0
                break
            end
        end
        if not find then
            targetShop = nil
            sleep = 1000
        end
        Citizen.Wait(sleep)
    end
end)

local progressbar = exports.vorp_progressbar:initiate()
local ClientRPC = VORPcore

local imgPathMenu = "<img style='height:48px; width:48px; margin-right: 10px;' src='" .. Config.ImageLocation .. "%s.png'>"
local imgPath = "<img style='height:48px; width:48px; margin-right: 10px;' src='" .. Config.ImageLocation .. "%s.png'>"
local itemLabelStyle = "<div style='font-size: 1.0vw; font-weight: bold; display: flex;  justify-content: center; height: 4rem; text-align: center;'>%s<div style='display: flex; flex-direction: column; justify-content: center; margin-left: 10px;'>%s</div></div>"
local menuItemStyle = "<div style='height: 4rem; display: flex;  justify-content: center;'>%s</div>"
local timeStyle = "<span style='opacity:0.6; font-size: 0.8vw;'>Crafting Time: %s seconds</span>"
local subMenuStyle = "<div style='font-size: 1.0vw; text-align: center; display: flex; justify-content: center;'>%s<div style='display: flex; flex-direction: column; justify-content: center;'>%s%s</div></div>"

function OpenMenu(playerLevel)
    Oncrafting = true
    MenuData.CloseAll()
    local elements = {}

    for recipeName, recipe in pairs(Config.Recipees) do
        local recipeImage = string.format(imgPathMenu, recipe.image or "default_image")
        local recipeLabel = string.format("<div style='font-size: 1.0vw; font-weight: bold;'>%s</div>", recipe.label)

        local recipeTime = ""
        if not (playerLevel < recipe.requiredlevel) then
            recipeTime = string.format(timeStyle, recipe.time or "Unknown")
        end

        local locked = playerLevel < recipe.requiredlevel
        local lockText = locked and string.format("<div style='color: red;'>Requires Level %d</div>", recipe.requiredlevel) or ""

        local styledLabel = string.format(itemLabelStyle, recipeImage, recipeLabel .. recipeTime .. lockText)

        table.insert(elements, {
            label = string.format(menuItemStyle, styledLabel),
            value = locked and "locked" or recipeName
        })
    end

    MenuData.Open('default', GetCurrentResourceName(), 'craftingbg_main1', {
        title    = "Survival Book",
        elements = elements,
        align    = 'top-left',
        itemHeight = "5vh",
    }, 

    function(data, menu)
        if data.current.value and data.current.value ~= "locked" then
            local selectedRecipe = Config.Recipees[data.current.value]
            if selectedRecipe then
                OpenRecipeSubMenu(selectedRecipe, playerLevel)
            end
        elseif data.current.value == "locked" then
            VORPcore.NotifyRightTip("This recipe is locked!", 4000)
        end
    end,

    function(data, menu)
        menu.close()
        isInMenu = false
        DisplayRadar(true)
        show = true
        Oncrafting = false
    end)
end

function OpenRecipeSubMenu(recipe, playerLevel)
    isInMenu = true
    local elements = {}

    if not recipe.items or #recipe.items == 0 then
        print("No ingredients for recipe: " .. recipe.label)
    end

    for _, ingredient in ipairs(recipe.items) do
        local ingredientImage = string.format(imgPath, ingredient.name)
        local ingredientLabel = string.format("<div style='font-size: 1.0vw;'>%s</div>", ingredient.name)
        local ingredientAmount = string.format("<span style='font-size: 0.8vw;'>x%d</span>", ingredient.amount)
        local styledLabel = string.format(subMenuStyle, ingredientImage, ingredientLabel, ingredientAmount)

        table.insert(elements, {
            label = string.format(menuItemStyle, styledLabel),
            value = ingredient.name
        })
    end

    local craftButton = string.format("<div style='text-align: center; margin-top: 10px;'>Craft %s (%dx)</div>", recipe.label, recipe.amount)
    table.insert(elements, {
        label = string.format(menuItemStyle, craftButton),
        value = "craft"
    })

    table.insert(elements, {
        label = string.format(menuItemStyle, "<div style='height: 1vw; color: red; text-align: center;'>⬅ Back</div>"),
        value = "back"
    })


    MenuData.Open('default', GetCurrentResourceName(), 'crafting_submenu', {
        title    = recipe.label .. " Ingredients",
        elements = elements,
        align    = 'top-left',
        lastmenu = "craftingbg_main1",
        itemHeight = "5vh",
    }, function(data, menu)
        if data.current == "backup" then
            menu.close()
            OpenMenu(playerLevel)
        elseif data.current.value == "craft" then
            ClientRPC.Callback.TriggerAsync('vln-survivalbook:getRequirements', function(hasAllItems, missingItems)
                if hasAllItems then
                    menu.close()
                    VORPcore.NotifyRightTip("Crafting " .. recipe.label .. ". You must wait " .. recipe.time .. " seconds.", 4000)
                    producing = true
                    Citizen.CreateThread(function()
                        Citizen.Wait(recipe.time * 1000)
                        TriggerServerEvent('vln-survivalbook:giveItem', recipe.item, recipe.amount, recipe.catagory)
                        producing = false
                        VORPcore.NotifyRightTip("Successfully crafted " .. recipe.label .. "!", 4000)
                    end)
                else
                    if #missingItems > 0 then
                        for _, missingItem in ipairs(missingItems) do
                            if missingItem and missingItem.itemName and missingItem.missingCount then
                                VORPcore.NotifyRightTip('You need ' .. missingItem.missingCount .. 'x ' .. missingItem.itemName, 4000)
                            end
                        end
                    end
                end
            end, recipe.item, recipe.amount)
        elseif data.current.value == "back" then
            menu.close()
            OpenMenu(playerLevel)
        end
    end, function(menu)
        menu.close()
    end)
end

function OpenCraftMenu(targetshop)
    Oncrafting = true
    local playerdatalevel = playerdatalevel 
    MenuData.CloseAll()
    local elements = {}

    local shopData = Config.CraftLocations[targetshop]
    if not shopData then
        return
    end

    for recipeName, recipe in pairs(shopData.Craftables or {}) do
        local recipeImage = string.format(imgPathMenu, recipe.image or "default_image")
        local recipeLabel = string.format("<div style='font-size: 1.0vw; font-weight: bold;'>%s</div>", recipe.label)

        local recipeTime = ""
        if not (playerdatalevel < recipe.requiredlevel) then
            recipeTime = string.format(timeStyle, recipe.time or "Unknown")
        end

        local locked = playerdatalevel < recipe.requiredlevel
        local lockText = locked and string.format("<div style='color: red;'>Requires Level %d</div>", recipe.requiredlevel) or ""

        local styledLabel = string.format(itemLabelStyle, recipeImage, recipeLabel .. recipeTime .. lockText)

        table.insert(elements, {
            label = string.format(menuItemStyle, styledLabel),
            value = locked and "locked" or recipeName
        })
    end

    MenuData.Open('default', GetCurrentResourceName(), 'craftingbg_main2', {
        title    = shopData.title or "Crafting",
        elements = elements,
        align    = 'top-left',
        itemHeight = "5vh",
    },
    function(data, menu)
        if data.current.value and data.current.value ~= "locked" then
            local selectedRecipe = shopData.Craftables[data.current.value]
            if selectedRecipe then
                menu.close()
                OpenCraftSubMenu(selectedRecipe, playerdatalevel, targetshop)
            end
        elseif data.current.value == "locked" then
            VORPcore.NotifyRightTip("This recipe is locked!", 4000)
        end
    end,
    function(data, menu)
        menu.close()
        isInMenu = false
        DisplayRadar(true)
        show = true
        Oncrafting = false
    end)
end

function OpenCraftSubMenu(recipe, playerLevel, targetShop)
    isInMenu = true
    local elements = {}

    if not recipe.items or #recipe.items == 0 then
        print("No ingredients for recipe: " .. recipe.label)
    end

    for _, ingredient in ipairs(recipe.items) do
        local ingredientImage = string.format(imgPathMenu, ingredient.name) 
        local ingredientLabel = string.format("<div style='font-size: 1.0vw; font-weight: bold;'>%s</div>", ingredient.name)
        local ingredientAmount = string.format("<div style='font-size: 0.8vw;'>x%d</div>", ingredient.amount)
        local styledLabel = string.format(itemLabelStyle, ingredientImage, ingredientLabel .. ingredientAmount) 

        table.insert(elements, {
            label = string.format(menuItemStyle, styledLabel),
            value = ingredient.name
        })
    end

    local craftButtonText = string.format("<div>Craft %s (%dx)</div>", recipe.label, recipe.amount)
    table.insert(elements, {
        label = string.format(menuItemStyle, craftButtonText),
        value = "craft"
    })

    local backButton = "<div style=' color: red;'>⬅ Back</div>"
    table.insert(elements, {
        label = string.format(menuItemStyle, backButton),
        value = "back"
    })

    MenuData.Open('default', GetCurrentResourceName(), 'crafting_submenuweapon', {
        title    = recipe.label .. " Ingredients",
        elements = elements,
        align    = 'top-left',
        lastmenu = "craftingbg_main2",
        itemHeight = "5vh", 
    }, function(data, menu)
        if data.current.value == "back" then
            menu.close()
            OpenCraftMenu(targetShop)

        elseif data.current.value == "craft" then
            ClientRPC.Callback.TriggerAsync('vln-survivalbook:getRequirementsWeapon', function(hasAllItems, missingItems)
                if hasAllItems then
                    menu.close()
                    VORPcore.NotifyRightTip("Crafting " .. recipe.label .. ". You must wait " .. recipe.time .. " seconds.", 4000)
                    producing = true
                    Citizen.CreateThread(function()
                        Citizen.Wait(recipe.time * 1000)
                        Oncrafting = false
                        TriggerServerEvent('vln-survivalbook:giveItem', recipe.item, recipe.amount, recipe.catagory)
                        producing = false
                        VORPcore.NotifyRightTip("Successfully crafted " .. recipe.label .. "!", 4000)
                    end)
                else
                    if #missingItems > 0 then
                        for _, missingItem in ipairs(missingItems) do
                            if missingItem and missingItem.itemName and missingItem.missingCount then
                                VORPcore.NotifyRightTip('You need ' .. missingItem.missingCount .. 'x ' .. missingItem.itemName, 4000)
                            end
                        end
                    end
                end
            end, recipe.item, recipe.amount, targetShop)
        end
    end, function(menu)
        menu.close()
    end)
end




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        
        if targetShop and Selected then
            local store = Config.CraftLocations[targetShop]
            local jobSpecific = store.jobonly
            if jobSpecific then
                if playerjob and jobcheck(store.job, playerjob) then
                    if store.StoreHoursAllowed and IsStoreClosed(store) == 'closed' and not Oncrafting then
                            local label = CreateVarString(10, 'LITERAL_STRING', Config.Closed .. store.StoreOpen .. Config.Am .. store.StoreClose .. Config.Pm )
                            PromptSetActiveGroupThisFrame(prompts, label)
                    elseif not Oncrafting then
                            local coords = Config.CraftLocations[targetShop]["coords"]
                            
                            local label = CreateVarString(10, 'LITERAL_STRING', Config.OpenPrompt)
                            PromptSetActiveGroupThisFrame(prompts, label)
                            
                        if Citizen.InvokeNative(0xC92AC953F0A982AE, openMailbox) then
                            OpenCraftMenu(targetShop)
                        end
                    end
                end
            else
                if store.StoreHoursAllowed and IsStoreClosed(store) == 'closed' then
                        local label = CreateVarString(10, 'LITERAL_STRING', Config.Closed .. store.StoreOpen .. Config.Am .. store.StoreClose .. Config.Pm )
                        PromptSetActiveGroupThisFrame(prompts, label)
                elseif not Oncrafting then
                        local coords = Config.CraftLocations[targetShop]["coords"]
                        
                        local label = CreateVarString(10, 'LITERAL_STRING', Config.OpenPrompt)
                        PromptSetActiveGroupThisFrame(prompts, label)
                        
                        if Citizen.InvokeNative(0xC92AC953F0A982AE, openMailbox) then
                            OpenCraftMenu(targetShop)
                        end
                end
            end
        end
    end
end)

RegisterNetEvent("vln-survivalbook:openBook")
AddEventHandler("vln-survivalbook:openBook", function(level)
    OpenMenu(level)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
       return
    end

    MenuData.CloseAll()
   
end)


