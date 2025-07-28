Config = {}

Config.Debug = false -- Dont make true on Live Server

-- Config.Version = "Standalone" or "VORP"
Config.Version = "VORP" -- "Standalone" = Only the command is used to attach or remove the scope / "VORP" = All features in the config file can be used with VORP (features such as attaching a scope with an item)

--########## STANDALONE ##########--
Config.AddScopeCommand = false
Config.RemoveScopeCommands = false

--########## VORP ##########--
Config.AdminCommand = true -- If true than admin can add scope with command
Config.Group = "admin"
Config.AdminAddScopeCommand = "AddScopeAdmin"
Config.AdminRemoveScopeCommand = "AdminRemoveScopeAdmin"

Config.Animation = true -- Animation while attaching the scope
Config.Anim = {AnimDict = "mech_inspection@weapons@longarms@rifle_bolt_action@base", AnimName = "aim_enter", AnimDuration = 1500}

Config.UseScopeItems = true -- Attach the scopes through the item
Config.CloseInventory = true -- Close inventory after use the scope item

Config.ScopeAttachToolRequire = true -- If true, need to have a Config.ScopeAttachToolItem in the inventory to attach the scope -- false
Config.RemoveScopeAttachToolAfterUse = false -- If true, the attach tool is removed from the inventory after use
Config.ScopeAttachToolItem = "screwdriver" -- You need to add to DB or you can just run the SQL file (Extra/scopeitems.sql)

Config.RemoveScopeWithAttachTool = true -- If true, need to have a Config.ScopeAttachToolItem in the inventory to remove the scope -- false
Config.RemoveScopeWithCommand = false
Config.RemoveScopeCommand = "RemoveScope"

Config.ScopeItems = { -- You need to add them to DB or you can just run the SQL file (Extra/scopeitems.sql)
    WEAPON_REPEATER_WINCHESTER_SHORT = "scopeshortwinchester",
    WEAPON_REPEATER_HENRY_SHORT = "scopeshorthenry",
    WEAPON_REPEATER_EVANS_SHORT = "scopeshortevans",
    WEAPON_REPEATER_CARBINE_SHORT = "scopeshortcarbine",
    WEAPON_RIFLE_VARMINT_SHORT = "scopeshortvarmint",
    WEAPON_RIFLE_VARMINT_MEDIUM = "scopemediumvarmint",
    WEAPON_RIFLE_BOLTACTION_SHORT = "scopeshortboltaction",
    WEAPON_RIFLE_BOLTACTION_MEDIM = "scopemediumboltaction",
    WEAPON_RIFLE_SPRINGFIELD_SHORT = "scopeshortspringfield",
    WEAPON_RIFLE_SPRINGFIELD_MEDIUM = "scopemediumspringfield",
    WEAPON_SNIPERRIFLE_ROLLINGBLOCK_SHORT = "scopeshortrollingblock",
    WEAPON_SNIPERRIFLE_ROLLINGBLOCK_MEDIUM = "scopemediumrollingblock",
    WEAPON_SNIPERRIFLE_ROLLINGBLOCK_LONG = "scopelongrollingblock",
    WEAPON_SNIPERRIFLE_CARCANO_SHORT = "scopeshortcarcano",
    WEAPON_SNIPERRIFLE_CARCANO_MEDIUM = "scopemediumcarcano",
    WEAPON_SNIPERRIFLE_CARCANO_LONG = "scopelongcarcano",
}

Config.Notification = {
    Enable = true,
    NotificationTime = 4000, -- 4000 = 4 Sec
    Successful = "Successful",
    Warning = "Warning",
    NoAttachTool = "You dont have the " .. Config.ScopeAttachToolItem .. " for attach scope",
    NoSpace = "You dont have enough space to take scope",
    ScopeAttached = "Scope successfully attached",
    ScopeRemoved = "Scope successfully removed"
}