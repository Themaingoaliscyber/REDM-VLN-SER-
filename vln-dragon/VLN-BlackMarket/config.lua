Config = {}

Config.NoInv = "You don't have stock"
Config.NoMoney = "you got no money boy"
Config.Shoptext = 'Press ~e~[E]~q~ to sell'
Config.Blacktext = 'Press ~e~[G]~q~ to Buy'
Config.Selltext = 'You have sold '
Config.Buytext = "You bought"
Config.Coords = {
	vector3(-1961.59, 2159.8, 327.56)
}
Config.Coords2 = { --- مكان تصريف الاموال القذره
-- vector3(2888.34, -255.4, 43.05) --- مكان 1
-- vector3(-2410.99, -1014.09, 167.77) ---- مكان 2
vector3(1932.25, -1892.16, 41.65)
}
Config.Blips = {
	{x = -1961.59, y = 2159.8, z = 327.56}
}

Config.WebhookLogs = "https://discord.com/api/webhooks/1365700345426219120/Qak_nQwLRBLRCeg97PxrptinYxn4nac68YTXxFDmd0VEcua9mQl8E6ZO-AK90blkDShZ"



Config.FenceShop = {
	{
		['Text'] = "$7 - weed", -- الاسم اللي يطلع في القائمة
		['SubText'] = "",
		['Desc'] = "weed", -- ملاحظات
		['Param'] = {
			['Price'] = 7,
			['Tipo'] = "weed", -- اسم الايتم في الداتا
			['Mens'] = "weed"
		}
	},
	{
		['Text'] = "$300 - lockpick", -- الاسم اللي يطلع في القائمة
		['SubText'] = "",
		['Desc'] = "lockpick", -- ملاحظات
		['Param'] = {
			['Price'] = 300,
			['Tipo'] = "lockpick", -- اسم الايتم في الداتا
			['Mens'] = "lockpick"
		}
	},
	{
		['Text'] = "$300 - screwdriver", -- الاسم اللي يطلع في القائمة
		['SubText'] = "",
		['Desc'] = "screwdriver", -- ملاحظات
		['Param'] = {
			['Price'] = 300,
			['Tipo'] = "screwdriver", -- اسم الايتم في الداتا
			['Mens'] = "screwdriver"
		}
	},
	{
		['Text'] = "$450 - scopeshortcarcano", -- الاسم اللي يطلع في القائمة
		['SubText'] = "",
		['Desc'] = "scopeshortcarcano", -- ملاحظات
		['Param'] = {
			['Price'] = 450,
			['Tipo'] = "scopeshortcarcano", -- اسم الايتم في الداتا
			['Mens'] = "scopeshortcarcano"
		}
	},
}


Config.Chatarra = {
	
	{
		['Text'] = "$5 - weed", -- الاسم اللي يطلع في القائمة
		['SubText'] = "",
		['Desc'] = "weed", -- ملاحظات
		['Param'] = {
			['Price'] = 5,
			['Tipo'] = "weed", -- اسم الايتم في الداتا
			['Mens'] = "weed"
		}
	},
	-- {
	-- 	['Text'] = "$3 - birra",
	-- 	['SubText'] = "",
	-- 	['Desc'] = "birra",
	-- 	['Param'] = {
	-- 		['Price'] = 3,
	-- 		['Tipo'] = "birra",
	-- 		['Mens'] = "a birra Bottle"
	-- 	}
	-- },
	-- {
	-- 	['Text'] = "$3 - Whisky",
	-- 	['SubText'] = "",
	-- 	['Desc'] = "Kentucky Whisky",
	-- 	['Param'] = {
	-- 		['Price'] = 3,
	-- 		['Tipo'] = "whisky",
	-- 		['Mens'] = "a Bottle of Whisky"
	-- 	}
	-- },
	{
		['Text'] = "$2 - mojito",
		['SubText'] = "",
		['Desc'] = "Can of Cooked Kidney Beans",
		['Param'] = {
			['Price'] = 2,
			['Tipo'] = "mojito",
			['Mens'] = "a mojito drink"
		}
	}
}