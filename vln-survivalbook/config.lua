Config = {}
Translation = {}
Prompts = {}

Config.ImageLocation = "nui://vorp_inventory/html/img/items/"

--Settings
Config.Distance = 3.0       --Distance for opening market
Config.PropDistance = 1.5
Prompts = {
    Open = 0xF3830D8E,
    Place = 0x8AAA0AD4,
    Cancel = 0xF84FA74F,
    Lockpick = 0x80F28E95,
    Inspect = 0x760A9C6F,
    turnObjectLeft = 0x7F8D09B8, 
    turnObjectRight = 0x4CC0E2FE,
}

Config.Marker = true
Config.PromptKey = 0xC7B5340A

Config.JobCooldown = 5000

--Webhook
Config.Webhook = 'https://discord.com/api/webhooks/1251854077353005179/vlcaMq8cy-_5VGmRdwauYaGJl6RZrmHngy5kE0S-FI31JWogIy_vG9oudFUQprFrsswm'  --IMPORTANT FOR IT
Config.BotName = 'QQ Scripts' -- Write the desired bot name
Config.ServerName = 'QQ Scripts' -- Write your server's name
Config.IconURL = 'https://media.discordapp.net/attachments/1157646475635998810/1168100174095208538/adb.png?ex=6550890f&is=653e140f&hm=a1dbb0cb367115bd83ba64992306c606881fb0d635274f8de6057b575ba557eb&=&width=840&height=675' -- Insert your desired image link
Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html
Config.WebhookColor = '16127'

Config.OpenPrompt = 'Craft'
Config.SubPrompt = 'Welcome'
Config.Closed = "Closed "
Config.Am = " Am "
Config.Pm = " Pm"

Config.Recipees = {
    -- ["moonshine"] = {
    --     items = {
    --         { name = "corn_mash", amount = 5 },
    --         { name = "sugar", amount = 3 },
    --         { name = "consumable_water", amount = 2 }
    --     },
    --     item = "moonshine", 
    --     label = 'Moonshine',
    --     catagory = "item", --item or weapon
    --     amount = 2,
    --     image = 'moonshine',
    --     time = 60 ,
    --     requiredlevel = 2
    -- },
    ["whisky"] = {
        items = {
            { name = "consumable_apple", amount = 5 },
            { name = "sugar", amount = 3 },
            { name = "consumable_water", amount = 2 }
        },
        item = "whisky", 
        label = 'Whiskey',
        catagory = "item", --item or weapon rollingpaper
        image = 'whisky',
        amount = 2,
        time = 60,
        requiredlevel = 2
    },
    ["rollingpaper"] = {
        items = {
            { name = "wood", amount = 5 },
            { name = "hwood", amount = 3 },
            { name = "log", amount = 2 }
        },
        item = "rollingpaper", 
        label = 'rollingpaper',
        catagory = "item", --item or weapon 
        image = 'rollingpaper',
        amount = 5,
        time = 60,
        requiredlevel = 2
    },
    ["wine"] = {
        items = {
            { name = "consumable_apple", amount = 5 },
            { name = "sugar", amount = 3 },
            { name = "consumable_water", amount = 2 }
        },
        item = "wine",  
        label = 'Wine',
        catagory = "item", --item or weapon
        image = 'wine',
        amount = 2,
        time = 60,
        requiredlevel = 2
    },
    ["apple"] = {
        items = {
            { name = "corn_mash", amount = 5 },
            { name = "sugar", amount = 3 },
            { name = "consumable_water", amount = 2 }
        },
        item = "apple", 
        label = 'Apple',
        catagory = "item", --item or weapon
        amount = 2,
        image = 'apple',
        time = 60 ,
        requiredlevel = 2
    },
    ["diamond_nugget"] = {
        items = {
            { name = "diamond_flakes", amount = 10 },
            { name = "coal", amount = 3},
            { name = "wood", amount = 5}
        },
        item = "diamond_nugget", 
        label = 'diamond nugget',
        catagory = "item", --item or weapon
        amount = 5,
        image = 'diamond_nugget',
        time = 60 ,
        requiredlevel = 2
    },
    ["beer"] = {
        items = {
            { name = "malt", amount = 5 },
            { name = "sugar", amount = 3 },
            { name = "consumable_water", amount = 2 }
        },
        item = "beer", 
        label = 'Beer',
        catagory = "item", --item or weapon
        image = 'beer',
        amount = 2,
        time = 60,
        requiredlevel = 2
    },
    ["consumable_meat_stringy_cooked"] = {
        items = {
            { name = "provision_meat_mature_venison", amount = 5 },
            { name = "campfire", amount = 1 },
            { name = "consumable_water", amount = 3 },
            { name = "coal", amount = 3}
        },
        item = "consumable_meat_stringy_cooked",  
        label = 'meat Kabsa',
        catagory = "item", --item or weapon
        image = 'consumable_meat_stringy_cooked',
        amount = 3,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_canned_sardines"] = {
        items = {
            { name = "provision_meat_mature_venison", amount = 3 },
            { name = "campfire", amount = 1 },
            { name = "consumable_water", amount = 3 },
            { name = "coal", amount = 3}
        },
        item = "consumable_canned_sardines",  
        label = 'canned sardines',
        catagory = "item", --item or weapon
        image = 'consumable_canned_sardines',
        amount = 2,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_kidneybeans_can"] = {
        items = {
            { name = "provision_meat_mature_venison", amount = 6 },
            { name = "campfire", amount = 1 },
            { name = "consumable_water", amount = 3 },
            { name = "coal", amount = 3}
        },
        item = "consumable_kidneybeans_can",  
        label = 'kidneybeans can',
        catagory = "item", --item or weapon
        image = 'consumable_kidneybeans_can',
        amount = 3,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_canned_peach"] = {
        items = {
            { name = "consumable_peach", amount = 6 },
            { name = "campfire", amount = 1 },
            { name = "consumable_water", amount = 3 },
            { name = "coal", amount = 3}
        },
        item = "consumable_canned_peach",  
        label = 'kidneybeans can',
        catagory = "item", --item or weapon
        image = 'consumable_canned_peach',
        amount = 4,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_coffee"] = {
        items = {
            { name = "coffeebeans", amount = 10 },
            { name = "campfire", amount = 1 },
            { name = "consumable_water", amount = 2 },
            { name = "coal", amount = 2}
        },
        item = "consumable_coffee",  
        label = 'kidneybeans can',
        catagory = "item", --item or weapon
        image = 'consumable_coffee',
        amount = 5,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_breakfast"] = {
        items = {
            { name = "consumable_water", amount = 2},
            { name = "meat", amount = 1},
            { name = "sugar", amount = 2}
        },
        item = "consumable_breakfast",
        label = "Breakfast",
        catagory = "item", --item or weapon
        image = "consumable_breakfast",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_fruitsalad"] = {
        items = {
            { name = "consumable_pear", amount = 2},
            { name = "consumable_peach", amount = 2},
            { name = "red_grapes", amount = 2},
            { name = "consumable_apple", amount = 2},
            { name = "Black_Berry", amount = 2}
        },
        item = "consumable_fruitsalad",
        label = "Fruit Salad",
        catagory = "item", --item or weapon
        image = "consumable_fruitsalad",
        amount = 5,
        time = 60,
        requiredlevel = 1
    },
    -- ["ammoarrownormal"] = {
    --     items = {
    --         { name = "wood", amount = 5},
    --         { name = "w_melee_knife01", amount = 1},
    --     },
    --     item = "ammoarrownormal",
    --     label = "Arrow Normal",
    --     catagory = "item", --item or weapon
    --     image = "ammoarrownormal",
    --     amount = 5,
    --     time = 60,
    --     requiredlevel = 1
    -- },
    ["campfire"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "rock", amount = 5},
            { name = "coal", amount = 3}
        },
        item = "campfire",
        label = "Campfire",
        catagory = "item", --item or weapon
        image = "campfire",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    -- ["ammorevolvernormal"] = {
    --     items = {
    --         { name = "ironbar", amount = 2},
    --         { name = "coal", amount = 3}
    --     },
    --     item = "ammorevolvernormal",
    --     label = "Revolver Ammo Normal",
    --     catagory = "item", --item or weapon
    --     image = "ammorevolvernormal",
    --     amount = 5,
    --     time = 60,
    --     requiredlevel = 1
    -- },
    ["consumable_meat_greavy"] = {
        items = {
            { name = "provision_meat_mature_venison", amount = 1},
            { name = "coal", amount = 3}
        },
        item = "consumable_meat_greavy",
        label = "Meat Greavy",
        catagory = "item", --item or weapon
        image = "consumable_meat_greavy",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["consumable_salmon"] = {
        items = {
            { name = "salmon", amount = 1},
            { name = "coal", amount = 3}
        },
        item = "consumable_salmon",
        label = "Dried Salmon",
        catagory = "item", --item or weapon
        image = "consumable_salmon",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["shotgunbarrel"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "shotgunbarrel",
        label = "shotgun attach",
        catagory = "item", --item or weapon
        image = "shotgunbarrel",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["shotgunmold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "shotgunmold",
        label = "shotgun attach",
        catagory = "item", --item or weapon
        image = "shotgunmold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["shotgunreceiver"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "shotgunreceiver",
        label = "shotgun attach",
        catagory = "item", --item or weapon
        image = "shotgunreceiver",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["shotgunstock"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "shotgunstock",
        label = "shotgun attach",
        catagory = "item", --item or weapon
        image = "shotgunstock",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["shotgunstock"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "shotgunstock",
        label = "shotgun attach",
        catagory = "item", --item or weapon
        image = "shotgunstock",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["riflerecmold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "riflerecmold",
        label = "riflere attach",
        catagory = "item", --item or weapon
        image = "riflerecmold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["riflestock"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "riflestock",
        label = "riflere attach",
        catagory = "item", --item or weapon
        image = "riflestock",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["riflemold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "riflemold",
        label = "riflere attach",
        catagory = "item", --item or weapon
        image = "riflemold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["riflereceiver"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "riflereceiver",
        label = "riflere attach",
        catagory = "item", --item or weapon
        image = "riflereceiver",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["riflebarrel"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "riflebarrel",
        label = "riflere attach",
        catagory = "item", --item or weapon
        image = "riflebarrel",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["revolverbarrel"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "revolverbarrel",
        label = "revolver attach",
        catagory = "item", --item or weapon
        image = "revolverbarrel",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["revolvercylinder"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "revolvercylinder",
        label = "revolver attach",
        catagory = "item", --item or weapon
        image = "revolvercylinder",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["revolverhandle"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "revolverhandle",
        label = "revolver attach",
        catagory = "item", --item or weapon
        image = "revolverhandle",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["revolvermold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "revolvermold",
        label = "revolver attach",
        catagory = "item", --item or weapon
        image = "revolvermold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["spring"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "spring",
        label = "revolver attach",
        catagory = "item", --item or weapon
        image = "spring",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["pistolbarrel"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "pistolbarrel",
        label = "pistol attach",
        catagory = "item", --item or weapon
        image = "pistolbarrel",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["pistolcylinder"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "pistolcylinder",
        label = "pistol attach",
        catagory = "item", --item or weapon
        image = "pistolcylinder",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["pistolhandle"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "pistolhandle",
        label = "pistol attach",
        catagory = "item", --item or weapon
        image = "pistolhandle",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["pistolmold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "pistolmold",
        label = "pistol pistol attach",
        catagory = "item", --item or weapon
        image = "pistolmold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["repeaterstock"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "repeaterstock",
        label = "repeater attach",
        catagory = "item", --item or weapon
        image = "repeaterstock",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["repeaterrecmold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "repeaterrecmold",
        label = "repeater attach",
        catagory = "item", --item or weapon
        image = "repeaterrecmold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["repeaterreceiver"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "repeaterreceiver",
        label = "repeater attach",
        catagory = "item", --item or weapon
        image = "repeaterreceiver",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["repeatermold"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "repeatermold",
        label = "repeater attach",
        catagory = "item", --item or weapon
        image = "repeatermold",
        amount = 1,
        time = 60,
        requiredlevel = 1
    },
    ["repeaterbarrel"] = {
        items = {
            { name = "wood", amount = 5},
            { name = "hwood", amount = 5}
        },
        item = "repeaterbarrel",
        label = "repeater attach",
        catagory = "item", --item or weapon
        image = "repeaterbarrel",
        amount = 1,
        time = 60,
        requiredlevel = 1
    }
    -- ["WEAPON_BOW"] = {
    --     items = {
    --         { name = "wood", amount = 1},
    --         { name = "coal", amount = 3}
    --     },
    --     item = "WEAPON_BOW",
    --     label = "Bow",
    --     catagory = "weapon", --item or weapon
    --     image = "WEAPON_BOW",
    --     amount = 1,
    --     time = 60,
    --     requiredlevel = 1
    -- }
}




Config.CraftLocations = {
    ['valentine'] = {
        coords = vector3(1866.18, 586.76, 113.44),    --Valentine
        title = "Valentine Factory",
        blip = true,
        blipname = "Valentine Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(1866.18, 586.76, 113.44),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_SHOTGUN_SAWEDOFF"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "shotgunbarrel",amount = 5},
                    { name = "shotgunmold" ,amount = 5},
                    { name = "shotgunreceiver" ,amount = 5},
                    { name = "shotgunstock" ,amount = 5}
                },
                item = "WEAPON_SHOTGUN_SAWEDOFF", ---- اسم الايتم او السلاح
                label = "SHOTGUN SAWEDOFF", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SHOTGUN_SAWEDOFF", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_SHOTGUN_DOUBLEBARREL"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "shotgunbarrel",amount = 5},
                    { name = "shotgunmold" ,amount = 5},
                    { name = "shotgunreceiver" ,amount = 5},
                    { name = "shotgunstock" ,amount = 5}
                },
                item = "WEAPON_SHOTGUN_DOUBLEBARREL", ---- اسم الايتم او السلاح
                label = "SHOTGUN DOUBLEBARREL", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SHOTGUN_DOUBLEBARREL", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 45 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_SHOTGUN_SEMIAUTO"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "shotgunbarrel",amount = 5},
                    { name = "shotgunmold" ,amount = 5},
                    { name = "shotgunreceiver" ,amount = 5},
                    { name = "shotgunstock" ,amount = 5}
                },
                item = "WEAPON_SHOTGUN_SEMIAUTO", ---- اسم الايتم او السلاح
                label = "SHOTGUNSEMIAUTO", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SHOTGUN_SEMIAUTO", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_SHOTGUN_REPEATING"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "shotgunbarrel",amount = 5},
                    { name = "shotgunmold" ,amount = 5},
                    { name = "shotgunreceiver" ,amount = 5},
                    { name = "shotgunstock" ,amount = 5}
                },
                item = "WEAPON_SHOTGUN_REPEATING", ---- اسم الايتم او السلاح
                label = "SHOTGUN REPEATING", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SHOTGUN_REPEATING", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 40 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_SHOTGUN_PUMP"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "shotgunbarrel",amount = 5},
                    { name = "shotgunmold" ,amount = 5},
                    { name = "shotgunreceiver" ,amount = 5},
                    { name = "shotgunstock" ,amount = 5}
                },
                item = "WEAPON_SHOTGUN_PUMP", ---- اسم الايتم او السلاح
                label = "SHOTGUN PUMP", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SHOTGUN_PUMP", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 40 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['valentine1'] = {
        coords = vector3(1624.31, 830.33, 144.71),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(1624.31, 830.33, 144.71),
        pedHeading = 173.72,
        Craftables = {
            ["ammorevolvernormal"] = { --
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammorevolvernormal", ---- اسم الايتم او السلاح
                label = "ammo revolver normal", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorevolvernormal", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorevolvervelocity"] = { --
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammorevolvervelocity", ---- اسم الايتم او السلاح
                label = "ammo revolverve locity ++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorevolvervelocity", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorevolversplitpoint"] = { --
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammorevolversplitpoint", ---- اسم الايتم او السلاح
                label = "ammo revolve rsplitpoint +++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeatersplitpoint", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorevolverexpress"] = { --
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorevolverexpress", ---- اسم الايتم او السلاح
                label = "ammo revolve rexpress ++++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorevolverexpress", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['rhodes'] = {
        coords = vector3(1460.2164, -476.4529, 73.9313),    --rhodes
        title = "Rhodes Factory",
        blip = true,
        blipname = "Rhodes Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(1460.2164, -476.4529, 73.9313),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_RIFLE_BOLTACTION"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "riflerecmold",amount = 5},
                    { name = "riflestock" ,amount = 5},
                    { name = "riflemold" ,amount = 5},
                    { name = "riflereceiver" ,amount = 5},
                    { name = "riflebarrel" ,amount = 5}

                },
                item = "WEAPON_RIFLE_BOLTACTION", ---- اسم الايتم او السلاح
                label = "RIFLE BOLTACTION", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_RIFLE_BOLTACTION", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_SNIPERRIFLE_CARCANO"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "riflerecmold",amount = 5},
                    { name = "riflestock" ,amount = 5},
                    { name = "riflemold" ,amount = 5},
                    { name = "riflereceiver" ,amount = 5},
                    { name = "riflebarrel" ,amount = 5}
                },
                item = "WEAPON_SNIPERRIFLE_CARCANO", ---- اسم الايتم او السلاح
                label = "SNIPERRIFLE CARCANO", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_SNIPERRIFLE_CARCANO", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
             
        }
    },
    ['rhodes1'] = {
        coords = vector3(1785.1681, -401.8160, 46.9479),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(1785.1681, -401.8160, 46.9479),
        pedHeading = 173.72,
        Craftables = {
            ["ammorepeaternormal"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammorepeaternormal", ---- اسم الايتم او السلاح
                label = "ammo repeater normal", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeaternormal", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorepeatervelocity"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorepeatervelocity", ---- اسم الايتم او السلاح
                label = "ammo repeater velocity ++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeatervelocity", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorepeatersplitpoint"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorepeatersplitpoint", ---- اسم الايتم او السلاح
                label = "ammo repeater splitpoint +++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeatersplitpoint", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorepeaterexpress"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorepeaterexpress", ---- اسم الايتم او السلاح
                label = "ammo repeater express ++++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeaterexpress", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['north'] = {
        coords = vector3(1183.9529, 2035.9307, 323.4580),    --Valentine
        title = "North Factory",
        blip = true,
        blipname = "North Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(1183.9529, 2035.9307, 323.4580),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_MELEE_LANTERN"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_MELEE_LANTERN", ---- اسم الايتم او السلاح
                label = "MELEE LANTERN", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_MELEE_LANTERN", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_MELEE_MACHETE_COLLECTOR"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_MELEE_MACHETE_COLLECTOR", ---- اسم الايتم او السلاح
                label = "MELEE MACHETE COLLECTOR", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_MELEE_MACHETE_COLLECTOR", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['north1'] = {
        coords = vector3(-1020.8010, 1690.5421, 243.8279),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-1020.8010, 1690.5421, 243.8279),
        pedHeading = 173.72,
        Craftables = {
            ["lockpick"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "lockpick", ---- اسم الايتم او السلاح
                label = "lock pick", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "lockpick", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["smallbomb"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "smallbomb", ---- اسم الايتم او السلاح
                label = "small bomb", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "smallbomb", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["bigbomb"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "bigbomb", ---- اسم الايتم او السلاح
                label = "big bomb", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "bigbomb", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorepeaterexpress"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorepeaterexpress", ---- اسم الايتم او السلاح
                label = "ammo repeater express ++++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorepeaterexpress", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['Strawberry'] = {
        coords = vector3(-1724.3468, -86.8918, 181.2134),    --Valentine
        title = "Strawberry Factory",
        blip = true,
        blipname = "Strawberry Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-1724.3468, -86.8918, 181.2134),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_REVOLVER_CATTLEMAN"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "revolverbarrel",amount = 5},
                    { name = "revolvercylinder" ,amount = 5},
                    { name = "revolverhandle" ,amount = 5},
                    { name = "revolvermold" ,amount = 5},
                    { name = "spring" ,amount = 5}

                },
                item = "WEAPON_REVOLVER_CATTLEMAN", ---- اسم الايتم او السلاح
                label = "REVOLVER CATTLEMAN", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REVOLVER_CATTLEMAN", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_REVOLVER_SCHOFIELD"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "revolverbarrel",amount = 5},
                    { name = "revolvercylinder" ,amount = 5},
                    { name = "revolverhandle" ,amount = 5},
                    { name = "revolvermold" ,amount = 5},
                    { name = "spring" ,amount = 5}
                },
                item = "WEAPON_REVOLVER_SCHOFIELD", ---- اسم الايتم او السلاح
                label = "REVOLVER SCHOFIELD", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REVOLVER_SCHOFIELD", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_REVOLVER_NAVY"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "revolverbarrel",amount = 5},
                    { name = "revolvercylinder" ,amount = 5},
                    { name = "revolverhandle" ,amount = 5},
                    { name = "revolvermold" ,amount = 5},
                    { name = "spring" ,amount = 5}
                },
                item = "WEAPON_REVOLVER_NAVY", ---- اسم الايتم او السلاح
                label = "REVOLVER NAVY", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REVOLVER_NAVY", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
             
        }
    },
    ['Strawberry1'] = {
        coords = vector3(-1626.8741, -877.8815, 89.4673),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-1626.8741, -877.8815, 89.4673),
        pedHeading = 173.72,
        Craftables = {
            ["ammoshotgunnormal"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammoshotgunnormal", ---- اسم الايتم او السلاح
                label = "ammo shotgun normal", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoshotgunnormal", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['Blackwater'] = {
        coords = vector3(-1058.6385, -1641.6172, 76.7162),    --Valentine
        title = "Blackwater Factory",
        blip = true,
        blipname = "Blackwater Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-1058.6385, -1641.6172, 76.7162),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_REPEATER_WINCHESTER"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "repeaterstock",amount = 5},
                    { name = "repeaterrecmold" ,amount = 5},
                    { name = "repeaterreceiver" ,amount = 5},
                    { name = "repeatermold" ,amount = 5},
                    { name = "repeaterbarrel" ,amount = 5}

                },
                item = "WEAPON_REPEATER_WINCHESTER", ---- اسم الايتم او السلاح
                label = "EPEATER WINCHESTER", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REPEATER_WINCHESTER", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_REPEATER_HENRY"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "repeaterstock",amount = 5},
                    { name = "repeaterrecmold" ,amount = 5},
                    { name = "repeaterreceiver" ,amount = 5},
                    { name = "repeatermold" ,amount = 5},
                    { name = "repeaterbarrel" ,amount = 5}
                },
                item = "WEAPON_REPEATER_HENRY", ---- اسم الايتم او السلاح
                label = "REPEATER HENRY", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REPEATER_HENRY", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_REPEATER_EVANS"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "repeaterstock",amount = 5},
                    { name = "repeaterrecmold" ,amount = 5},
                    { name = "repeaterreceiver" ,amount = 5},
                    { name = "repeatermold" ,amount = 5},
                    { name = "repeaterbarrel" ,amount = 5}
                },
                item = "WEAPON_REPEATER_EVANS", ---- اسم الايتم او السلاح
                label = "REPEATER EVANS", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_REPEATER_EVANS", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            }, 
        }
    },
    ['Blackwater1'] = {
        coords = vector3(-2036.1449, -1898.4458, 109.8050),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-2036.1449, -1898.4458, 109.8050),
        pedHeading = 173.72,
        Craftables = {
            ["ammoriflenormal"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammoriflenormal", ---- اسم الايتم او السلاح
                label = "ammo rifle normal", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoriflenormal", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammoriflevelocity"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammoriflevelocity", ---- اسم الايتم او السلاح
                label = "ammo rifleve locity ++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoriflevelocity", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammoriflesplitpoint"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammoriflesplitpoint", ---- اسم الايتم او السلاح
                label = "ammo rifle splitpoint +++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoriflesplitpoint", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["ammorifleexpress"] = {
                items = { ---- الايتمات
                    { name = "coal", amount = 15},
                    { name = "rock", amount = 10},
                    { name = "ironbar", amount = 10}
                },
                item = "ammorifleexpress", ---- اسم الايتم او السلاح
                label = "ammo rifle express ++++", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammorifleexpress", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['TumbleWeed'] = {
        coords = vector3(-5579.5693, -2585.8362, -8.6816),    --Valentine
        title = "TumbleWeed Factory",
        blip = true,
        blipname = "TumbleWeed Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-5579.5693, -2585.8362, -8.6816),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_PISTOL_M1899"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10},
                    { name = "pistolbarrel",amount = 5},
                    { name = "pistolcylinder" ,amount = 5},
                    { name = "pistolhandle" ,amount = 5},
                    { name = "pistolmold" ,amount = 5}

                },
                item = "WEAPON_PISTOL_M1899", ---- اسم الايتم او السلاح
                label = "PISTOL M1899", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_PISTOL_M1899", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_PISTOL_VOLCANIC"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "pistolbarrel",amount = 5},
                    { name = "pistolcylinder" ,amount = 5},
                    { name = "pistolhandle" ,amount = 5},
                    { name = "pistolmold" ,amount = 5}
                },
                item = "WEAPON_PISTOL_VOLCANIC", ---- اسم الايتم او السلاح
                label = "PISTOL VOLCANIC", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_PISTOL_VOLCANIC", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_PISTOL_MAUSER"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "repeaterstock",amount = 5},
                    { name = "repeaterrecmold" ,amount = 5},
                    { name = "repeaterreceiver" ,amount = 5},
                    { name = "repeatermold" ,amount = 5},
                    { name = "repeaterbarrel" ,amount = 5}
                },
                item = "WEAPON_PISTOL_MAUSER", ---- اسم الايتم او السلاح
                label = "PISTOL MAUSER", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_PISTOL_MAUSER", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_PISTOL_SEMIAUTO"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15},
                    { name = "pistolbarrel",amount = 5},
                    { name = "pistolcylinder" ,amount = 5},
                    { name = "pistolhandle" ,amount = 5},
                    { name = "pistolmold" ,amount = 5}
                },
                item = "WEAPON_PISTOL_SEMIAUTO", ---- اسم الايتم او السلاح
                label = "PISTOL SEMIAUTO", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_PISTOL_SEMIAUTO", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 55 -- لفل المطلوب للتصنيع
            }, 
        }
    },
    ['TumbleWeed1'] = {
        coords = vector3(-5859.5469, -3185.7104, -13.8330),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-5859.5469, -3185.7104, -13.8330),
        pedHeading = 173.72,
        Craftables = {
            ["ammoelephant"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammoelephant", ---- اسم الايتم او السلاح
                label = "ammo elephant", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoelephant", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
        }
    },
    ['ARMADILLO'] = {
        coords = vector3(-3413.8884, -2733.9756, -4.9132),    --Valentine
        title = "ARMADILLO Factory",
        blip = true,
        blipname = "ARMADILLO Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = -1634577211,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-3413.8884, -2733.9756, -4.9132),
        pedHeading = 173.72,
        Craftables = {
            ["WEAPON_MELEE_MACHETE"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 10},
                    { name = "coal", amount = 18},
                    { name = "hwood", amount = 12},
                    { name = "ironbar", amount = 10}

                },
                item = "WEAPON_MELEE_MACHETE", ---- اسم الايتم او السلاح
                label = "MELEE MACHETE", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_MELEE_MACHETE", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_THROWN_THROWING_KNIVES"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_THROWN_THROWING_KNIVES", ---- اسم الايتم او السلاح
                label = "THROWN THROWING KNIVES", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_THROWN_THROWING_KNIVES", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 25 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_LASSO"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_LASSO", ---- اسم الايتم او السلاح
                label = "WEAPON LASSO", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_LASSO", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 15 -- لفل المطلوب للتصنيع
            }, 
            ["WEAPON_MELEE_KNIFE"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_MELEE_KNIFE", ---- اسم الايتم او السلاح
                label = "MELEE KNIFE", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_MELEE_KNIFE", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 10 -- لفل المطلوب للتصنيع
            }, 
            ["WEAPON_BOW"] = {
                items = { ---- الايتمات
                    { name = "wood", amount = 15},
                    { name = "coal", amount = 20},
                    { name = "hwood", amount = 17},
                    { name = "ironbar", amount = 15}
                },
                item = "WEAPON_BOW", ---- اسم الايتم او السلاح
                label = "BOW", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_BOW", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 16 -- لفل المطلوب للتصنيع
            }
        }
    },
    ['ARMADILLO1'] = {
        coords = vector3(-3845.9238, -3006.3611, -7.4664),    --Valentine
        title = "Ammo Factory",
        blip = true,
        blipname = "Ammo Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1576459965,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-3845.9238, -3006.3611, -7.4664),
        pedHeading = 173.72,
        Craftables = {
            ["ammoknives"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammoknives", ---- اسم الايتم او السلاح
                label = "ammo knives", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoknives", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 25 -- لفل المطلوب للتصنيع
            },
            ["lighter"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "lighter", ---- اسم الايتم او السلاح
                label = "lighter", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "lighter", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 17 -- لفل المطلوب للتصنيع
            },
            ["ammoarrownormal"] = {
                items = { ---- الايتمات
                    { name = "iron", amount = 15},
                    { name = "coal", amount = 10},
                    { name = "copper", amount = 10}
                },
                item = "ammoarrownormal", ---- اسم الايتم او السلاح
                label = "ammo arrow normal", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "ammoarrownormal", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["WEAPON_KIT_BINOCULARS"] = {
                items = { ---- الايتمات
                    { name = "diamond_flakes", amount = 45},
                    { name = "diamond_nugget", amount = 2},
                    { name = "iron", amount = 10}
                },
                item = "WEAPON_KIT_BINOCULARS", ---- اسم الايتم او السلاح
                label = "KIT BINOCULARS المنظار", --- الاسم اللي يطلع في القائمة
                catagory = "weapon", --item or weapon قسم التصنيع
                image = "WEAPON_KIT_BINOCULARS", --- صورة السلاح
                amount = 1, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 8 -- لفل المطلوب للتصنيع
            },
        },
    },
    ['weed'] = {
        coords = vector3(-2107.51, 1842.82, 255.45),    --Valentine
        title = "weed Factory",
        blip = true,
        blipname = "weed Factory",
        jobonly = false,
        job ={ "gunsmith", "rguns"},
        jobrankcustomization = 2,
        StoreHoursAllowed = false,
        StoreOpen = 7,
        StoreClose = 21,
        sprite = 1754506823,
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        blipnameClosed = 'Closed Factory',
        ped = true,
        pedModel = `cr_strawberry_males_01`,
        pedCoords = vector3(-2107.51, 1842.82, 255.45),
        pedHeading = 173.72,
        Craftables = {
            ["hemp_cig"] = {
                items = { ---- الايتمات
                    { name = "weed", amount = 20},
                    { name = "rollingpaper", amount = 10},
                    { name = "lighter", amount = 1}
                },
                item = "hemp_cig", ---- اسم الايتم او السلاح
                label = "hemp cig", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "hemp_cig", --- صورة السلاح
                amount = 5, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 35 -- لفل المطلوب للتصنيع
            },
            ["cigar"] = {
                items = { ---- الايتمات
                    { name = "Indian_Tobbaco", amount = 20},
                    { name = "rollingpaper", amount = 10},
                    { name = "lighter", amount = 1}
                },
                item = "cigar", ---- اسم الايتم او السلاح
                label = "cigar", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "cigar", --- صورة السلاح
                amount = 10, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 15 -- لفل المطلوب للتصنيع
            },
            ["cigarette"] = {
                items = { ---- الايتمات
                    { name = "Indian_Tobbaco", amount = 20},
                    { name = "rollingpaper", amount = 10},
                    { name = "lighter", amount = 1}
                },
                item = "cigarette", ---- اسم الايتم او السلاح
                label = "cigarette", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "cigarette", --- صورة السلاح
                amount = 10, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 5 -- لفل المطلوب للتصنيع
            },
            ["opium"] = {
                items = { ---- الايتمات
                    { name = "Indian_Tobbaco", amount = 20},
                    { name = "weed", amount = 20},
                    { name = "rollingpaper", amount = 10},
                    { name = "lighter", amount = 1}
                },
                item = "opium", ---- اسم الايتم او السلاح
                label = "opium", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "opium", --- صورة السلاح
                amount = 10, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 30 -- لفل المطلوب للتصنيع
            },
            ["peyote"] = {
                items = { ---- الايتمات
                    { name = "Indian_Tobbaco", amount = 20},
                    { name = "weed", amount = 20},
                    { name = "rollingpaper", amount = 10},
                    { name = "lighter", amount = 1}
                },
                item = "peyote", ---- اسم الايتم او السلاح
                label = "peyote", --- الاسم اللي يطلع في القائمة
                catagory = "item", --item or weapon قسم التصنيع
                image = "peyote", --- صورة السلاح
                amount = 10, ---- الكمية اللي يعطيها
                time = 120,  --- الوقت للانتهاء من التصنيع
                requiredlevel = 25 -- لفل المطلوب للتصنيع
            },
        },
    },

}




