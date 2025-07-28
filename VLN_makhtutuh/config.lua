Config = {}
Config.framework = "vorp"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 5

Config.InteractDistance = 1.0

Config.Prompts = {
    Prompt1 = 0x05CA7C52,
}

Config.UseExtraFeatureAfterAllFound = true

Config.Marker = {
    rgba = {126, 0, 0, 100},
    size = {1.0, 1.0, 0.3},
    enable = true,
}

Config.SearchAnims = {
    anim1 = {"amb_work@world_human_farmer_weeding@male_a@idle_a", "idle_b", 6000},
    anim2 = {"mech_pickup@gator_eggs", "base_four", 1550},
    anim3 = {"mech_pickup@loot@ammo_case", "base", 2500},
}

Config.Texts = {
    Prompt1 = "Search",
    --
    Treasure = "Treasure",
    Zoom = "Zoom",
    Flip = "Flip",
    PutAway = "Put Away",
    TreasureHunt = "Treasure Hunt",
    AllFound = "All Treasure found!",
    FoundLast = "Last Treasure found! +$%s",
    FoundOne = "Treasure found, next one is available now! +$%s",
    FoundOne2 = "Treasure found! +$%s",
    --Webhook Extra
    W_Source = "Source",
    W_Id = "Identifiers",
    W_MapId = "Map ID",
    W_MapName = "Map Name",
    W_Money = "Money Reward",
    W_Items = "Reward Items",
    W_AddedItems = "Added Items",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.TreasureMapCommand = "treasuremap"
Config.TreasureMapItem = "ricx_treasuremap"
Config.RemoveMapItemAtLastFinish = false --Remove Treasure Map if all treasure is found

Config.DefaultItemEngineTexture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}
Config.ItemEngineTextures = {
    bread = {"menu_textures", "log_gang_bag", "COLOR_GOLD"},
    water = {"menu_textures", "log_gang_bag", "COLOR_GOLD"},
}

Config.RemoveTreasureMapsAtFinish = false --Remove Treasure Map if the related treasure is found
Config.TreasureMaps = {
    {ytd = "treasure_map_c1_m1", name = "Treasure Map #1", pos = vec3(-353.362, 299.954, 89.0), anim = "anim1", reward = { --Jack Hall Gang Treasure Map 1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 100}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 100},
        },
    },
    item = "ricx_treasure_map_1",},

    {ytd = "treasure_map_c1_m2", name = "Treasure Map #2", pos = vec3(131.091, 1827.830, 199.388), anim = "anim3", reward = { --Jack Hall Gang Treasure Map2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_2",},

    {ytd = "treasure_map_c1_m3", name = "Treasure Map #3", pos = vec3(1618.902, 1488.385, 145.426), anim = "anim1", reward = { --Jack Hall Gang Treasure Map3
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_3",},

    {ytd = "treasure_map_c2_m1", name = "Treasure Map #4", pos = vec3(-1045.651, 421.419, 46.501), anim = "anim1", reward = { --High Stakes Treasure Map1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_4",},

    {ytd = "treasure_map_c2_m2", name = "Treasure Map #5", pos = vec3(-948.723, 1634.051, 244.650), anim = "anim2", reward = { --High Stakes Treasure Map2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_5",},

    {ytd = "treasure_map_c2_m3", name = "Treasure Map #6", pos = vec3(416.242, 1603.961, 184.85), anim = "anim1", reward = { --High Stakes Treasure Map3
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_6",},

    {ytd = "treasure_map_c3_m1", name = "Treasure Map #7", pos = vec3(1099.067, -648.155, 96.878), anim = "anim2", reward = { --Poisonous Trail Treasure Map 1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_7",},

    {ytd = "treasure_map_c3_m2", name = "Treasure Map #8", pos = vec3(2674.684, 424.809, 82.50), anim = "anim1", reward = { --Poisonous Trail Treasure Map 2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_8",},

    {ytd = "treasure_map_c3_m3", name = "Treasure Map #9", pos = vec3(2314.819, 1052.170, 66.45), anim = "anim1", reward = { --Poisonous Trail Treasure Map 3
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_9",},

    {ytd = "treasure_map_c4_m1", name = "Treasure Map #10", pos = vec3(2327.314, -1514.552, 41.15), anim = "anim2", reward = { --Le Tresor des Morts Treasure Map 1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_10",},

    {ytd = "treasure_map_c4_m2", name = "Treasure Map #11", pos = vec3(2700.326, -1059.690, 47.13), anim = "anim3", reward = { --Le Tresor des Morts Treasure Map 2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_11",},

    {ytd = "treasure_map_c5_m1", name = "Treasure Map #12", pos = vec3(-2774.523, -3209.428, -8.770), anim = "anim2", reward = { --The Elemental Trail Treasure Map 1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_12",},

    {ytd = "treasure_map_c5_m2", name = "Treasure Map #13", pos = vec3(-5216.333, -3442.449, -15.864), anim = "anim2", reward = { --The Elemental Trail Treasure Map 2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_13",},

    {ytd = "treasure_map_c5_m3", name = "Treasure Map #14", pos = vec3(-3308.302, -2840.534, -7.073), anim = "anim1", reward = {--The Elemental Trail Treasure Map 3
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_14",},

    {ytd = "treasure_map_c6_m1", name = "Treasure Map #15", pos = vec3(2414.732, -738.801, 44.325), anim = "anim3", reward = { --Landmark of Riches Treasure Map 1
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_15",},

    {ytd = "treasure_map_c6_m2", name = "Treasure Map #16", pos = vec3(745.002, 1818.196, 240.28), anim = "anim3", reward = { --Landmark of Riches Treasure Map 2
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_16",},

    {ytd = "treasure_map_c6_m3", name = "Treasure Map #17", pos = vec3(1499.045, -1836.203, 56.12), anim = "anim1", reward = { --Landmark of Riches Treasure Map 3
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_17",},

    {ytd = "treasure_map_c6_m4", name = "Treasure Map #18", pos = vec3(-2152.290, 77.591, 310.0), anim = "anim2", reward = { --Landmark of Riches Treasure Map 4
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_18",},

    {ytd = "treasuremap_horse", name = "Treasure Map #19", pos = vec3(1444.844, 898.286, 121.55), anim = "anim3", reward = { --Chick’s Treasure Map
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_19",},

    {ytd = "ui_map_frozen_death", name = "Treasure Map #20", pos = vec3(-3948.394, -2174.380, 4.39), anim = "anim1", reward = { --Panoramic Map
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_20",},

    {ytd = "ui_map_disc_combined", name = "Treasure Map #21", pos = vec3(-4394.805, -2159.581, 47.33), anim = "anim1", reward = { --Torn Treasure_Map
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_21",},

    {ytd = "document_map_townsecret_asb", name = "Treasure Map #22", pos = vec3(2302.555, 1046.058, 115.69), anim = "anim1", reward = { --Elysian Pool Treasure Map
        money = {min = 10, max = 50, multiplier = 0.5}, items = {
            {id = "bread", label = "Bread", amount = {min = 1, max = 2}, chance = 25}, 
            {id = "water", label = "Water", amount = {min = 1, max = 2}, chance = 25},
        },
    },
    item = "ricx_treasure_map_22",},
}

--[[
    --REDEM:RP INVENTORY ITEM

    ["ricx_treasuremap"] = { label = "Treasure Map", description = "Use to find Treasure", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 50,imgsrc = "items/ricx_treasuremap.png", type = "item_standard",},

    ["ricx_treasure_map_1"] = { label = "Treasure Map #1", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_1.png", type = "item_standard",},
    ["ricx_treasure_map_2"] = { label = "Treasure Map #2", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_2.png", type = "item_standard",},
    ["ricx_treasure_map_3"] = { label = "Treasure Map #3", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_3.png", type = "item_standard",},
    ["ricx_treasure_map_4"] = { label = "Treasure Map #4", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_4.png", type = "item_standard",},
    ["ricx_treasure_map_5"] = { label = "Treasure Map #5", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_5.png", type = "item_standard",},
    ["ricx_treasure_map_6"] = { label = "Treasure Map #6", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_6.png", type = "item_standard",},
    ["ricx_treasure_map_7"] = { label = "Treasure Map #7", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_7.png", type = "item_standard",},
    ["ricx_treasure_map_8"] = { label = "Treasure Map #8", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_8.png", type = "item_standard",},
    ["ricx_treasure_map_9"] = { label = "Treasure Map #9", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_9.png", type = "item_standard",},
    ["ricx_treasure_map_10"] = { label = "Treasure Map #10", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_10.png", type = "item_standard",},
    ["ricx_treasure_map_11"] = { label = "Treasure Map #11", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_11.png", type = "item_standard",},
    ["ricx_treasure_map_12"] = { label = "Treasure Map #12", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_12.png", type = "item_standard",},
    ["ricx_treasure_map_13"] = { label = "Treasure Map #13", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_13.png", type = "item_standard",},
    ["ricx_treasure_map_14"] = { label = "Treasure Map #14", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_14.png", type = "item_standard",},
    ["ricx_treasure_map_15"] = { label = "Treasure Map #15", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_15.png", type = "item_standard",},
    ["ricx_treasure_map_16"] = { label = "Treasure Map #16", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_16.png", type = "item_standard",},
    ["ricx_treasure_map_17"] = { label = "Treasure Map #17", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_17.png", type = "item_standard",},
    ["ricx_treasure_map_18"] = { label = "Treasure Map #18", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_18.png", type = "item_standard",},
    ["ricx_treasure_map_19"] = { label = "Treasure Map #19", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_19.png", type = "item_standard",},
    ["ricx_treasure_map_20"] = { label = "Treasure Map #20", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_20.png", type = "item_standard",},
    ["ricx_treasure_map_21"] = { label = "Treasure Map #21", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_21.png", type = "item_standard",},
    ["ricx_treasure_map_22"] = { label = "Treasure Map #22", description = "Use to find Treasure Location", weight = 0.05, canBeDropped = true, canBeUsed = true, requireLvl = 0, limit = 10,imgsrc = "items/ricx_treasure_map_22.png", type = "item_standard",},

    --QBR/QR/RS ITEM
    ['ricx_treasuremap'] 					= {['name'] = 'ricx_treasuremap', 			 	  	['label'] = 'Treasure Map',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasuremap.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure'},
	
    ['ricx_treasure_map_1'] 					= {['name'] = 'ricx_treasure_map_1', 			 	  	['label'] = 'Treasure Map #1',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_1.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_2'] 					= {['name'] = 'ricx_treasure_map_2', 			 	  	['label'] = 'Treasure Map #2',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_2.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_3'] 					= {['name'] = 'ricx_treasure_map_3', 			 	  	['label'] = 'Treasure Map #3',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_3.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_4'] 					= {['name'] = 'ricx_treasure_map_4', 			 	  	['label'] = 'Treasure Map #4',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_4.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_5'] 					= {['name'] = 'ricx_treasure_map_5', 			 	  	['label'] = 'Treasure Map #5',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_5.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_6'] 					= {['name'] = 'ricx_treasure_map_6', 			 	  	['label'] = 'Treasure Map #6',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_6.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_7'] 					= {['name'] = 'ricx_treasure_map_7', 			 	  	['label'] = 'Treasure Map #7',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_7.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_8'] 					= {['name'] = 'ricx_treasure_map_8', 			 	  	['label'] = 'Treasure Map #8',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_8.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_9'] 					= {['name'] = 'ricx_treasure_map_9', 			 	  	['label'] = 'Treasure Map #9',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_9.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_10'] 					= {['name'] = 'ricx_treasure_map_10', 			 	  	['label'] = 'Treasure Map #10',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_10.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_11'] 					= {['name'] = 'ricx_treasure_map_11', 			 	  	['label'] = 'Treasure Map #11',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_11.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_12'] 					= {['name'] = 'ricx_treasure_map_12', 			 	  	['label'] = 'Treasure Map #12',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_12.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_13'] 					= {['name'] = 'ricx_treasure_map_13', 			 	  	['label'] = 'Treasure Map #13',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_13.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_14'] 					= {['name'] = 'ricx_treasure_map_14', 			 	  	['label'] = 'Treasure Map #14',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_14.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_15'] 					= {['name'] = 'ricx_treasure_map_15', 			 	  	['label'] = 'Treasure Map #15',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_15.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_16'] 					= {['name'] = 'ricx_treasure_map_16', 			 	  	['label'] = 'Treasure Map #16',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_16.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_17'] 					= {['name'] = 'ricx_treasure_map_17', 			 	  	['label'] = 'Treasure Map #17',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_17.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_18'] 					= {['name'] = 'ricx_treasure_map_18', 			 	  	['label'] = 'Treasure Map #18',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_18.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_19'] 					= {['name'] = 'ricx_treasure_map_19', 			 	  	['label'] = 'Treasure Map #19',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_19.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_20'] 					= {['name'] = 'ricx_treasure_map_20', 			 	  	['label'] = 'Treasure Map #20',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_20.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_21'] 					= {['name'] = 'ricx_treasure_map_21', 			 	  	['label'] = 'Treasure Map #21',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_21.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
    ['ricx_treasure_map_22'] 					= {['name'] = 'ricx_treasure_map_22', 			 	  	['label'] = 'Treasure Map #22',	    				['weight'] = 1,			['type'] = 'item', 				['image'] = 'ricx_treasure_map_22.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,    	['level'] = 0,		['description'] = 'Use to find Treasure Location'},
]]
