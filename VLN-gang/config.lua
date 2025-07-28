Config = {}
Translation = {}
Prompts = {}

Config.ImageLocation = "nui://vorp_inventory/html/img/items/"


--Settings
Config.Distance = 3.0       --Distance for opening market
Prompts = {
    Open = 0xC7B5340A,
    Place = 0x8AAA0AD4,
    Cancel = 0xF84FA74F,
    Inspect = 0x760A9C6F,
    Take = 0xF3830D8E,
    turnObjectLeft = 0x7F8D09B8, 
    turnObjectRight = 0x4CC0E2FE,
}


--Webhook
Config.Webhook = ''  --IMPORTANT FOR IT
Config.BotName = 'QQ Scripts' -- Write the desired bot name
Config.ServerName = 'QQ Scripts' -- Write your server's name
Config.IconURL = 'https://media.discordapp.net/attachments/1157646475635998810/1168100174095208538/adb.png?ex=6550890f&is=653e140f&hm=a1dbb0cb367115bd83ba64992306c606881fb0d635274f8de6057b575ba557eb&=&width=840&height=675' -- Insert your desired image link
Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html
Config.WebhookColor = '16127'

Config.AdminActions = true      -- admin permissions can do what they want

Config.CreateCommand = 'creategang'
Config.DeleteCommand = 'deletegang'


Config.CreateJobs = {
    "gang",
    -- "gang",
}

Config.JobCooldown = 5000

Config.RadiusSize = 50.0

--TRANSLATIONS
Translation = {
    Manage = "Place ",
    Cancel = 'Cancel',
    Saloon = ' gang',
    Produced = "You produced ",
    Withdraw  = "You withdrew $",
    Wrong= "Something went wrong.",
    NotAdmin = "You Dont have Permission",
    InvalidID = "Gang id is not valid.",
    NoSaloon = "There is not any created gang with that id.",
    TipBoxCurr = 'The tip box does not have enough currency',
    SaloonDeleted = "Gang has been deleted Successfuly",
    OpenStorage = 'Gang ',
    ManageStorage = "Manage",
    Place = "Place ",
    Lockpick = 'Lockpick Storage',
    LookInside = 'Look Inside',
    Cancel = 'Cancel',
    Storage = ' Storage ',
    RotateRight = 'Rotate Right',
    RotateLeft = 'Rotate Left',
    PlacerPropmt = "Storage Placer",
    Storage = 'Storage',
    Owned = 'You owned ',
    Wrong = "Something went wrong.",
    Destroyed = 'Gang dispanded successfully for id: ',
}


Config.Missions = {
    [1] = {
        Title = 'Saint Denis Collect',
        blipName = 'Collect Money', 
        BlipSprite = 1481032477,
        MissionText = 'Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.',
        Location = vector3(1130.34, 501.64, 96.22),
        Item = {
            { itemName = 'goldbar', minAmount = 1, maxAmount = 2 },
            { itemName = 'diamond', minAmount = 1, maxAmount = 3 },
            { itemName = 'silverbar', minAmount = 4, maxAmount = 5 }
        },
        cooldown = 120  -- 2 hours
    },
    [2] = {
        Title = 'Blackwater Collect',
        blipName = 'Collect Money', 
        BlipSprite = 1481032477,
        MissionText = 'Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.Guys bring the money from the Saint Denis Departmants. And kill if you get in any trouble.',
        Location = vector3(-785.52, -1196.03, 43.69),
        Item = {
            { itemName = 'goldbar', minAmount = 1, maxAmount = 2 },
            { itemName = 'diamond', minAmount = 1, maxAmount = 3 },
            { itemName = 'silverbar', minAmount = 4, maxAmount = 5 }
        },
        cooldown = 120  -- 2 hours
    },
}