Config = {}
Translation = {}
Prompts = {}

Config.ImageLocation = "nui://vorp_inventory/html/img/items/"

Config.ItemName = 'storage'
Config.Prop =  'p_moneybox_open01x'

--Settings
Config.Distance = 3.0       --Distance for opening market
Config.StorageDistance = 1.5
Prompts = {
    Open = 0xC7B5340A,
    Place = 0x8AAA0AD4,
    Cancel = 0xF84FA74F,
    Lockpick = 0x80F28E95,
    Inspect = 0x760A9C6F,
    Take = 0xF3830D8E,
    LookInside = 0x8AAA0AD4,
    turnObjectLeft = 0x7F8D09B8, 
    turnObjectRight = 0x4CC0E2FE,
}


--Webhook
Config.Webhook = 'https://discord.com/api/webhooks/1247619082354823168/-w7qr6C1P80go1EQe2AaApMVpe8YY_ssa1zNMBvWQTMpVX3ppnJKMaAzDctYIoS80ICg'  --IMPORTANT FOR IT
Config.BotName = 'QQ Scripts' -- Write the desired bot name
Config.ServerName = 'QQ Scripts' -- Write your server's name
Config.IconURL = 'https://media.discordapp.net/attachments/1157646475635998810/1168100174095208538/adb.png?ex=6550890f&is=653e140f&hm=a1dbb0cb367115bd83ba64992306c606881fb0d635274f8de6057b575ba557eb&=&width=840&height=675' -- Insert your desired image link
Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html
Config.WebhookColor = '16127'


--COMMAND   Admins can delete storagees
Config.DeleteCommand = '/deletestorage'
Config.CommandSuggest = true

Config.CommandSuggestion = {
    commanddesc = 'Delete Storage',
    id = 'ID',
    iddesc = 'Enter Storage ID',
    conf = 'confirm',
    confdesc = 'Write confirm for delation.',
}

Config.AdminManage = true      

Config.StorageLimit = false   --One character storage creation limit
Config.StorageLimitAmount = 2 


Config.JobCooldown = 5000

Config.Storages = {       --its important that parents and itemnames should be same name.
        storage = {
            itemname = 'storage',
            label = 'Storage',
            dontacceptItems = false,
            acceptWeapons = true,
            shared = true,
            itemlimit = true,
            blacklist = false,
            defaultsize = 100000,
        },
        storageT2 = {
            itemname = 'storageT2',
            label = 'StorageT2',
            dontacceptItems = false,
            acceptWeapons = true,
            shared = true,
            itemlimit = true,
            blacklist = false,
            defaultsize = 50000,
        },
        storageT3 = {
            itemname = 'storageT3',
            label = 'StorageT3',
            dontacceptItems = false,
            acceptWeapons = true,
            shared = true,
            itemlimit = true,
            blacklist = false,
            defaultsize = 20000,
        },
        storageT4 = {
            itemname = 'storageT4',
            label = 'StorageT4',
            dontacceptItems = false,
            acceptWeapons = true,
            shared = true,
            itemlimit = true,
            blacklist = false,
            defaultsize = 2000,
        },
    } 


Config.LockpickItem = 'lockpick'

-- TRANSLATIONS
Translation = {
    --Prompts 
    OpenStorage = 'Open Storage',
    ManageStorage = "Manage Storage",
    Place = "Place ",
    Lockpick = 'Lockpick Storage',
    LookInside = 'Look Inside',
    Cancel = 'Cancel',
    Storage = ' Storage ',
    RotateRight = 'Rotate Right',
    RotateLeft = 'Rotate Left',
    PlacerPropmt = "Storage Placer",
    --Others
    Storage = 'Storage',
    Owned = 'You owned ',
    Cooldown = "%d minutes and %d seconds left to crack the storage",
    Successfully = "Storage created successfully.",
    Produced = "You produced",
    Withdraw = "You withdrew $",
    FromTB = ' from the tip box',
    Wrong = "Something went wrong.",
    Destroyed = 'Storage destroyed successfully for id: ',
    NotAdmin = "You Don't have Permission",
    InvalidID = "Storage id is not valid.",
    NoStorage = "There is not any created storage with that id.",
    CantCarry = "You can't carry more ",
    Tipped = "You tipped $",
    NotEnought = "You don't have enough Money",
    StorageCurr = 'The tip box does not have enough currency',
    StorageDeleted = "Storage has been deleted successfully",
    WrongUsage = "You used the command wrong",
    MissingItems = "You do not have all the required items to upgrade the storage.",
    UpgradeSuccess = "Storage upgraded successfully.",
    UpgradeFailed = "Failed to upgrade storage.",
    InvalidStorageSize = "Invalid storage size.",
    StorageNotFound = "Storage not found.",
    NotLockpick = 'You don\'t have ',
    AlreadyCracking = 'You are already cracking a storage',
    LockpickingYours  = 'Somebody is trying to crack your storage',
    PoliceAlert = 'Somebody is trying to crack the storage',
    LimitReached = "You have reached the limit of 3 storages.",
}

