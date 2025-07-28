function ApplyClothItems(clothinkey)
    local player = PlayerPedId()

    if Config.ClothItems[clothinkey] and Config.ClothItems[clothinkey].disableitems then
        -- Iterate through DisableClothes to remove specific items
        for _, disabledItem in ipairs(Config.ClothItems[clothinkey].DisableClothes) do
            local hash = Config.HashList[disabledItem]  -- Get the hash for the disabled item
            if hash and IsMetaPedUsingComponent(hash) then
                print("Removing disabled item:", disabledItem) -- Debug log
                RemoveTagFromMetaPed(hash,player)
            end
        end
    end
    
    Citizen.Wait(500)

    if not Config.ClothItems or not Config.ClothItems[clothinkey] then
        print("Clothing item set not found:", clothinkey)
        print("Checking hash:", hash, "for item:", disabledItem)
        return
    end

    IsPedReadyToRender(player)  

    for _, item in pairs(Config.ClothItems[clothinkey]) do
        if type(item) == "table" and item.name and key ~= "DisableClothes" then
            if item.name then
                ApplyShopItemToPed(item.name, player)

                SetMetaPedTag(player, item.name, item.albedo or 0, item.normal or 0, item.material or 0, item.palette or 0, item.tint0 or 0, item.tint1 or 0, item.tint2 or 0)
            else
                print("Item name missing in Config.ClothItems for", clothinkey)
            end
        end
    end

    UpdatePedVariation(player) 
end


function ApplyShopItemToPed(comp, ped)
    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped or PlayerPedId(), comp, false, true, false)
end

function SetMetaPedTag(ped, drawable, albedo, normal, material, palette, tint0, tint1, tint2)
    Citizen.InvokeNative(0xBC6DF00D7A4A6819, ped, drawable, albedo, normal, material, palette, tint0, tint1, tint2)
end

function UpdatePedVariation(ped)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped or PlayerPedId(), false, true, true, true, false)
end

function RemoveTagFromMetaPed(hash, ped)
    Citizen.InvokeNative(0xD710A5007C2AC539, ped or PlayerPedId(), hash, 0)
end

RegisterNetEvent("bob:SetClothes")
AddEventHandler("bob:SetClothes", function(clothkey)
    local clothkey = tostring(clothkey)
    ApplyClothItems(clothkey)
end)